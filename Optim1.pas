unit Optim1;

interface

type
    Image=array[1..8] of Extended;
     Proc=procedure;
     FF=function:Extended;
  var
   Data,Data0,Min_Value,Max_Value,D_Step,
   D_StepOld,DataOld,DataBef              :Image;
   N_Data                                 :byte;
   PP,NP                                  :word;
   FuncH                                  :FF;
   GraphikH                               :Proc;
   FlagEnd,FlagDipl                       :boolean;
   eps1,epsilon,Fold,Fnew,Fbefore         :Extended;
  const
   Size_data=sizeof(Image);
   a:array[1..8]of Extended=(1.1,1.1,1.1,1.1,1.1,1.1,1.1,1.1);
   Nstep=8;        // количество допустимых неудачных попыток
  procedure RegisterFunc(P:FF);
  procedure RegisterGraph(P:Proc);
  procedure BegRand(N_make:integer);
  procedure Hook;

implementation
uses UnitMain, SysUtils;
  procedure BegRand(N_Make:integer);
    var
    i,j,ii :integer;
    Params_Old,Params_Best:image;
begin
    Fbefore:=1.e8;
    for ii:=1 to N_Make do  {до 100}                     { Number of steps }
    begin

     for j:=1 to 100 do
     begin   // присваеваем каждому параметру случайное значение
             // в заданных пределах
        For i:=1 to N_Data do
         Data[i]:=Min_Value[i]+Random*(Max_Value[i]-Min_Value[i]);
         Fnew:=funcH;  // вычисл€ем значение целевой функции в данной точке
                       // случайно сгенерированных параметров
      if Fnew<Fbefore then
       begin      // запоминаем лучшие значени€ параметров
         move(Data,Params_Best,Size_Data);
         Fbefore:=Fnew; // запоминаем значение соотв. им функции
       end;

     end;
        // после 100 случайных забросов записываем лучшие значени€ параметров
        // в Data и рисуем по ним график
    Fnew:=Fbefore;
    move(Params_Best,Data,Size_Data);
    GraphikH;
    end;


end;   // в итоге мы получаем лучшую из 100 тыс. точку,
       // использу€ еЄ в качестве базовой.

 procedure InitVar;
  var
   fi:word;
 begin
   PP:=1;
   move(Data,DataOld,Size_Data);
   move(Data,DAtaBef,Size_Data);
   Fbefore:=Fnew;
   for fi:=1 to 6 do          // выбор шага приращени€
    if data0[fi]<>0 then D_Step[fi]:=D_StepOld[fi]*Data[fi]/Data0[fi]
    else D_Step[fi]:=0;
 end;

procedure ChecLimit;   // провер€ет, не прин€л ли параметр значение,
 var fi:word;          // лежащее за заданными пределами
  begin
   For fi:=1 to N_Data do
   begin       // если true -  параметрам присваиваютс€ граничные значени€
     if Data[fi]<Min_Value[fi] then Data[fi]:=Min_Value[fi];
     if Data[fi]>Max_Value[fi] then Data[fi]:=Max_Value[fi];
    end;
  end;

procedure Research;
 var       k:integer;
           Params_Old:Image;
           as0:array [1..6] of byte;

begin
 k:=1;
 Fnew:=funcH;
   move(Data,Params_Old,Size_Data);
 repeat
     fillchar(as0,sizeof(as0),0);
     inc(as0[k]);
     Fold:=Fnew;
     Data[k]:=Params_Old[k]+as0[k]*D_Step[k];
     ChecLimit;
     Fnew:=funcH;
     if Fnew>Fold then   // удачен ли сдвиг?
       begin    // неудачен - шаг назад
         Data[k]:=Params_Old[k]-as0[k]*D_Step[k];
         ChecLimit;
         Fnew:=funcH;
       end;
     if Fnew>Fold then   // удачен ли сдвиг?
       begin    // если снова неудачен - оставл€ем старое значение
         Fnew:=Fold;
         Data[k]:=Params_Old[k];
        end
     else  // удачен - запоминаем и переходим к следующему параметру
       Params_Old[k]:=Data[k];
     inc(k);
 until k>N_Data;        // делает шаг по всем параметрам, запоминает
                        // лучшие за шаг
     move(Params_Old,Data,Size_Data); // переписываем лучшие в Data
end;{of procedure}

procedure HOOk;
var i:Integer;
begin
   for i:=1 to N_Data do
     D_StepOLd[i]:=Data[i]*0.1;
     move(Data,Data0,Size_Data);
     Fnew:=funcH;
     FlagEnd:=false;
     FlagDipl:=false;
   repeat
     if not(FlagDipl) then InitVar;
     Research; // исследование
      if abs(Fnew)<eps1 then FlagEnd:=true;
      // улучшено ли значение функции and достаточно ли мало изменение функции
      while (Fnew<Fbefore) and(abs(Fbefore-Fnew)>epsilon) do
       begin
          // запоминаем параметры старой базовой точки
         move(Data,DataOld,Size_Data);
         Fbefore:=Fnew;               {function in the new base point }
         for i:=1 to N_Data do
         begin    // нова€ базова€ точка
            Data[i]:=Data[i]+a[i]*(Data[i]-Databef[i]); // экстрапол€ци€
            if Data[i]<Min_Value[i] then Data[i]:=Min_Value[i];
            if Data[i]>Max_Value[i] then Data[i]:=Max_Value[i];
         end;
         move(Data,Databef,Size_Data);
         for i:=1 to N_Data do  // увеличиваем шаг приращени€
          if data0[i]<>0 then D_Step[i]:=D_StepOld[i]*Data[i]/Data0[i]
          else D_Step[i]:=0;
         FlagDipl:=true;
         Research; // исследование
         if Fnew<Fbefore then // если значение функции уточнено
         begin   // рисуем график
           GraphikH;
         end;
         if (abs((Fnew-Fbefore))>epsilon) then NP:=0;
         if (abs((Fnew-Fbefore))<=epsilon) then
         begin
          inc(Np);
         break;
         end;
         if Fnew<eps1 then  // если значение функции меньше заданной величины
         begin   // конец поиска.
           FlagEnd:=true;
         break;
         end;

       end;
      // если изменени€ функции незначительные
      If FlagDipl and (abs((Fnew-Fbefore))<=epsilon) then
         //  FlagEnd:=True
           FlagDipl:=false  // не заверншаем, а увеличиваем шаг приращени€
      else  // если новое значение функции стало больше предыдущего
        if FlagDipl and (Fnew>Fbefore) then
          begin  // возвращаемс€ к предыдущему значению функции
           move(DataOld,Data,Size_DAta);
           Fnew:=Fbefore;
           FlagDipl:=false;
          end
        else
          begin  // данный вариант возможен лишь при  FlagDipl=false.

          for i:=1 to N_Data do  // уменьшаем шаг
           D_StepOld[i]:=D_StepOld[i]/2;
           move(DataOld,Data,Size_Data);    // к предыдущей точке
           Fnew:=Fbefore;
           PP:=0;inc(NP);
          end;
          if NP>=Nstep then FlagEnd:=true;
   until FlagEnd;
end;

procedure RegisterFunc(P:FF);
begin
 FuncH:=P;
end;

procedure RegisterGraph(P:Proc);
begin
 GraphikH:=P;
end;

begin
 epsilon:=2e-6;
 eps1:=0.15;
end.
 