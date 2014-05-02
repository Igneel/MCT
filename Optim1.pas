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
   Nstep=8;        // ���������� ���������� ��������� �������
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
    for ii:=1 to N_Make do  {�� 100}                     { Number of steps }
    begin

     for j:=1 to 100 do
     begin   // ����������� ������� ��������� ��������� ��������
             // � �������� ��������
        For i:=1 to N_Data do
         Data[i]:=Min_Value[i]+Random*(Max_Value[i]-Min_Value[i]);
         Fnew:=funcH;  // ��������� �������� ������� ������� � ������ �����
                       // �������� ��������������� ����������
      if Fnew<Fbefore then
       begin      // ���������� ������ �������� ����������
         move(Data,Params_Best,Size_Data);
         Fbefore:=Fnew; // ���������� �������� �����. �� �������
       end;

     end;
        // ����� 100 ��������� �������� ���������� ������ �������� ����������
        // � Data � ������ �� ��� ������
    Fnew:=Fbefore;
    move(Params_Best,Data,Size_Data);
    GraphikH;
    end;


end;   // � ����� �� �������� ������ �� 100 ���. �����,
       // ��������� � � �������� �������.

 procedure InitVar;
  var
   fi:word;
 begin
   PP:=1;
   move(Data,DataOld,Size_Data);
   move(Data,DAtaBef,Size_Data);
   Fbefore:=Fnew;
   for fi:=1 to 6 do          // ����� ���� ����������
    if data0[fi]<>0 then D_Step[fi]:=D_StepOld[fi]*Data[fi]/Data0[fi]
    else D_Step[fi]:=0;
 end;

procedure ChecLimit;   // ���������, �� ������ �� �������� ��������,
 var fi:word;          // ������� �� ��������� ���������
  begin
   For fi:=1 to N_Data do
   begin       // ���� true -  ���������� ������������� ��������� ��������
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
     if Fnew>Fold then   // ������ �� �����?
       begin    // �������� - ��� �����
         Data[k]:=Params_Old[k]-as0[k]*D_Step[k];
         ChecLimit;
         Fnew:=funcH;
       end;
     if Fnew>Fold then   // ������ �� �����?
       begin    // ���� ����� �������� - ��������� ������ ��������
         Fnew:=Fold;
         Data[k]:=Params_Old[k];
        end
     else  // ������ - ���������� � ��������� � ���������� ���������
       Params_Old[k]:=Data[k];
     inc(k);
 until k>N_Data;        // ������ ��� �� ���� ����������, ����������
                        // ������ �� ���
     move(Params_Old,Data,Size_Data); // ������������ ������ � Data
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
     Research; // ������������
      if abs(Fnew)<eps1 then FlagEnd:=true;
      // �������� �� �������� ������� and ���������� �� ���� ��������� �������
      while (Fnew<Fbefore) and(abs(Fbefore-Fnew)>epsilon) do
       begin
          // ���������� ��������� ������ ������� �����
         move(Data,DataOld,Size_Data);
         Fbefore:=Fnew;               {function in the new base point }
         for i:=1 to N_Data do
         begin    // ����� ������� �����
            Data[i]:=Data[i]+a[i]*(Data[i]-Databef[i]); // �������������
            if Data[i]<Min_Value[i] then Data[i]:=Min_Value[i];
            if Data[i]>Max_Value[i] then Data[i]:=Max_Value[i];
         end;
         move(Data,Databef,Size_Data);
         for i:=1 to N_Data do  // ����������� ��� ����������
          if data0[i]<>0 then D_Step[i]:=D_StepOld[i]*Data[i]/Data0[i]
          else D_Step[i]:=0;
         FlagDipl:=true;
         Research; // ������������
         if Fnew<Fbefore then // ���� �������� ������� ��������
         begin   // ������ ������
           GraphikH;
         end;
         if (abs((Fnew-Fbefore))>epsilon) then NP:=0;
         if (abs((Fnew-Fbefore))<=epsilon) then
         begin
          inc(Np);
         break;
         end;
         if Fnew<eps1 then  // ���� �������� ������� ������ �������� ��������
         begin   // ����� ������.
           FlagEnd:=true;
         break;
         end;

       end;
      // ���� ��������� ������� ��������������
      If FlagDipl and (abs((Fnew-Fbefore))<=epsilon) then
         //  FlagEnd:=True
           FlagDipl:=false  // �� ����������, � ����������� ��� ����������
      else  // ���� ����� �������� ������� ����� ������ �����������
        if FlagDipl and (Fnew>Fbefore) then
          begin  // ������������ � ����������� �������� �������
           move(DataOld,Data,Size_DAta);
           Fnew:=Fbefore;
           FlagDipl:=false;
          end
        else
          begin  // ������ ������� �������� ���� ���  FlagDipl=false.

          for i:=1 to N_Data do  // ��������� ���
           D_StepOld[i]:=D_StepOld[i]/2;
           move(DataOld,Data,Size_Data);    // � ���������� �����
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
 