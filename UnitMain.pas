unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Clipbrd, Buttons, StdCtrls, StrUtils, ExtCtrls, Menus,
  CheckLst, Math, ComCtrls, Series, TeEngine, TeeProcs, Chart, Optim1,
  Gauges;
const
    EKT=150.574; {77} // используется в ФМЭ
{    EKT=136.4; {85}
{     EKT=115.9; {100}
{    EKT=92.75; {125}
   {  Mobility                         [ m**2/V*s ]     ;
      Magnetic Field                   [ Tesla ]        ;
      Electric Field                   [ V/m ]          ;
      Surface Recombination Velocity   [ m/s ]          ;
      All other values in SI                             ;   }
  MaxPoints=100;
  PointPerInt=50;
  MaxParameters=8;    // Максимальное число параметров
  MaxRepeat=100;      // Максимальное число повторов
type
  EditArray = array[1..36] of TEdit;
  SeriesArray = array[1..9] of TBarSeries;  
  Holl   = array[1..4, 1..21] of Extended;
  HollB  = array[1..2, 1..11] of Extended;
  HollRh = array[1..11] of Extended;
  vector = array [0..100] of Extended;
  DataValue = array[1..MaxParameters, 1..MaxRepeat] of Extended;
  TForm1 = class(TForm)
    Label7: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Button2: TButton;
    Memo1: TMemo;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TPointSeries;
    Chart2: TChart;
    Series3: TLineSeries;
    Series4: TPointSeries;
    ODFMEData: TOpenDialog;
    Button4: TButton;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Label17: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N8: TMenuItem;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    chtSpectr: TChart;
    Series5: TLineSeries;
    LineSeries1: TLineSeries;
    Chart5: TChart;
    LineSeries3: TLineSeries;
    PointSeries1: TPointSeries;
    Chart6: TChart;
    LineSeries4: TLineSeries;
    PointSeries2: TPointSeries;
    btnLoadTenzor: TButton;
    OpenDialog2: TOpenDialog;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    StringGrid3: TStringGrid;
    btnClearSpectrTable: TButton;
    GroupBox7: TGroupBox;
    Label22: TLabel;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    TabSheet5: TTabSheet;
    Button10: TButton;
    OpenDialog3: TOpenDialog;
    Chart4: TChart;
    Series7: TLineSeries;
    Series8: TPointSeries;
    Chart7: TChart;
    Series9: TLineSeries;
    Series10: TPointSeries;
    Label24: TLabel;
    mmoFeatFunctionValue: TMemo;
    mmoFeatMuElectronValue: TMemo;
    Label25: TLabel;
    Label26: TLabel;
    MemoMnog3: TMemo;
    MemoMnog4: TMemo;
    mmoConcentrationElectrons: TMemo;
    MemoMnog6: TMemo;
    MemoMnog7: TMemo;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Button12: TButton;
    GroupBox8: TGroupBox;
    OpenDialogHollLoad: TOpenDialog;
    SDHallData: TSaveDialog;
    OpenDialogHRes: TOpenDialog;
    SDHallResults: TSaveDialog;
    GroupBox10: TGroupBox;
    btnSpectrResult: TButton;
    btnSpectrResult1: TButton;
    SDSpektrRes: TSaveDialog;
    ODSpektrRes: TOpenDialog;
    GroupBox12: TGroupBox;
    btnFeatOnce: TButton;
    btnFeatMulti: TButton;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    btnLoadFeatResults: TButton;
    btnSaveFeatResults: TButton;
    SDHall8Res: TSaveDialog;
    N32: TMenuItem;
    Chart11: TChart;
    Series_FP: TLineSeries;
    Series_FP_Exp: TPointSeries;
    GroupBox15: TGroupBox;
    Memo10: TMemo;
    Label23: TLabel;
    Label32: TLabel;
    Memo14: TMemo;
    GroupBox16: TGroupBox;
    Button23: TButton;
    Button24: TButton;
    GroupBox17: TGroupBox;
    Button25: TButton;
    Button26: TButton;
    ODFaradData: TOpenDialog;
    Memo15: TMemo;
    Label36: TLabel;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Button22: TButton;
    Memo16: TMemo;
    Label38: TLabel;
    Label39: TLabel;
    Button21: TButton;
    PageControl3: TPageControl;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    Label40: TLabel;
    Edit6: TEdit;
    Memo6: TMemo;
    Label41: TLabel;
    Button27: TButton;
    Label42: TLabel;
    Edit7: TEdit;
    Label43: TLabel;
    Label44: TLabel;
    Edit8: TEdit;
    SDFaradRes: TSaveDialog;
    ODFaradRes: TOpenDialog;
    ODHall8Res: TOpenDialog;
    PageControl4: TPageControl;
    TabSheet8: TTabSheet;
    TabSheet11: TTabSheet;
    GroupBox18: TGroupBox;
    Button28: TButton;
    Label45: TLabel;
    Memo7: TMemo;
    Label46: TLabel;
    GroupBox19: TGroupBox;
    Button3: TButton;
    N3: TMenuItem;
    N9: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N7: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    GroupBox20: TGroupBox;
    Button5: TButton;
    Button29: TButton;
    SDFMERes: TSaveDialog;
    ODFMERes: TOpenDialog;
    GroupBox21: TGroupBox;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    GroupBox22: TGroupBox;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    Edit9: TEdit;
    Button30: TButton;
    SDFMEData: TSaveDialog;
    Button31: TButton;
    SDFaradData: TSaveDialog;
    GroupBox23: TGroupBox;
    EditVes1: TEdit;
    EditVes8: TEdit;
    EditVes3: TEdit;
    EditVes2: TEdit;
    EditVes5: TEdit;
    EditVes4: TEdit;
    EditVes6: TEdit;
    EditVes7: TEdit;
    EditVes11: TEdit;
    EditVes10: TEdit;
    EditVes9: TEdit;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label65: TLabel;
    Label64: TLabel;
    Pnl_Pr_Hall8: TPanel;
    Pnl_Pr_Farad: TPanel;
    Pnl_Pr_FME: TPanel;
    TabSheet12: TTabSheet;
    Chart12: TChart;
    LineSeries2: TLineSeries;
    Memo5: TMemo;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    GroupBox24: TGroupBox;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Label71: TLabel;
    Edit15: TEdit;
    Label72: TLabel;
    Edit16: TEdit;
    Series6: TLineSeries;
    GroupBox25: TGroupBox;
    RadioGroup1: TRadioGroup;
    GroupBox26: TGroupBox;
    Edit17: TEdit;
    Edit18: TEdit;
    Button35: TButton;
    TabSheet13: TTabSheet;
    Memo8: TMemo;
    Label73: TLabel;
    btnFeat: TButton;
    procedure CreateTabs;
    procedure FormCreate(Sender: TObject);



    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N100Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure Gistogram(mass:DataValue; Ser:SeriesArray; m,n:Integer);
    procedure Statistic(mass:DataValue; Edit:EditArray; m,n:Integer);
    procedure N9Click(Sender: TObject);

    procedure btnLoadTenzorClick(Sender: TObject);
    procedure MakeInterpolate;
    procedure MakeMNK(a:boolean);
    procedure MakeLagranj;
    procedure InitArray;
    procedure InitArray2;
    procedure AddExpPoints;
    procedure GetLnLimits(var Xmin,Xmax:integer);
    procedure Addpoints(Chart:TChart);
    procedure AddPoints2;
    procedure MobilitySpectrum;
    procedure chtSpectrClickSeries(Sender: TCustomChart; Series: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure chtSpectrMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SetGridFocus(SGrid: TStringGrid; r:integer);
    procedure btnClearSpectrTableClick(Sender: TObject);
   
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);

    procedure FileOpen_hall8;
    procedure ReplacementOfSeparator;


    procedure LoadConfig;

    procedure LoadSpektrResults;
    procedure LoadFaradData;
    procedure LoadFaradRes;
    procedure LoadHall8Res;
    procedure LoadFMEData;
    procedure LoadFMERes;


    procedure WriteSpektrResults;
    procedure WriteFaradRes;
    procedure WriteHall8Res;
    procedure WriteFMERes;
    function  Interval:Boolean;
    procedure Normir;
    procedure Scale_FME(FpFme:Holl);
    procedure ShowGraphics(Edit:EditArray; n:Integer; Graph:Proc);

    procedure btnSpectrResult1Click(Sender: TObject);
    procedure btnSpectrResultClick(Sender: TObject);
    procedure btnFeatOnceClick(Sender: TObject);
    procedure btnFeatMultiClick(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure btnSaveFeatResultsClick(Sender: TObject);
    procedure btnLoadFeatResultsClick(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure TabSheet8Show(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure TabSheet9Show(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure StringGrid3SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Button33Click(Sender: TObject);
    procedure LoadModelData;
    procedure NormModel;
    procedure Button32Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure btnFeatClick(Sender: TObject);


  private
   FNextViewer:HWnd;
    procedure WMChangeCBChain(var Msg: TWMChangeCBChain); message WM_CHANGECBCHAIN;
    procedure WMDrawClipboard(var Msg: TWMDrawClipboard); message WM_DRAWCLIPBOARD;
  public
    { Public declarations }
  end;
  Splain=record
   A,B,C,D:extended;
  end;
  PeakInfo=record
    Index:word;
    Value:extended;
    end;
  ImageDat=array [0..(PointPerInt-1)*PointPerInt] of extended;
  PImageDat=^ImageDat;  // указатель на массив из двух элементов.
  //ImageDat3=array[0..1] of peakinfo;
  //PImageDat3=^ImageDat3;


  Data_spektr=array of extended;
  mat = array of array of Extended;

  Dat1=array of Extended;
  Dat2= array of array of Extended;
  Dat3= array of array of Extended;

  //Dat1=array[1..MaxPoints] of extended;
  //Dat2=array[1..MaxPoints,1..MaxPoints] of extended;
  //Dat3=array[1..MaxPoints,1..2*MaxPoints] of extended;

var
  Form1: TForm1;
  e:Extended;
 
  NPoint,NPoint_hm                       :Integer;
  fil, fil_hall8, Data_File, Config_File :text;
  muP,Ex,D,UPh,UGrad,UGrad0,UDif,UDif0,
  Alfa,Alfa0,K_trap,w1,w2,g_s,muE1       :Extended;
  MagField,FpeExp,Fpe,FmExp,Fm,RoExp,Ro,
  FpExp,Fp, MagField_FME                 :vector;
  GraphON_FME, GraphON_hall,
  GraphOn_Farad                          :Boolean;
  d1                                     :DataValue;
  DefaultDir, Recent_File_FME,
  Recent_File_Farad                      :string;
  RowInFocus                             :Word;
 /////////////// спектр подвижности///////////
  NumberofPoints,Power_spektr,GridPoints :word;
  MagField_spektr,Gxx,Gxy,GxxExp,GxyExp  :Data_spektr;
  IntGxx,IntGxy,IntMagField,Spectr_e,Spectr_p,Mobility,
  QSpectr_e,QSpectr_p,Axx,Axy,Axx_d,Axy_d,
  dIntGxx,dIntGxy,QGxx,QGxy,dQGxx,dQGxy  :PImageDat;
  //Peak_e,Peak_p,Valley_e,Valley_p        :PImageDat3;
  SizeData                               :longint;
  B_spektr,Gxx_sp,Gxx_MC,Gxy_MC,
  Gxy_sp,Xr,Lv,Xv,Mv,Vpr                 :Dat1;
  Am,Qm,Cl,Cr,Cl_t,Cr_t,Cm,Cm_t          :Dat2;
  bulua                                  :boolean;
  MSRight,MSLeft                         :integer;
  Min_Spectr,Coef1,Coef2,Mu_min,Mu_max,
  W,F_s,A1,An,B1,Bn, Ves1, Ves2          :extended;
  // Геометрия Фарадея
  FpI                                    :Holl;
  LoadOld                                :Boolean;
  Mp, Post                               :Extended;
  ves:array[1..11] of Extended;
  
implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7;


{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);// создане формы
begin
  CreateTabs;  // заполнение таблиц
  DefaultDir:=GetCurrentDir;
  e:=1.602176487*Power(10,-19);
  DecimalSeparator:=',';
  FnextViewer:=SetClipboardViewer(Handle);
  GraphON_FME:=True;  // графики включены
  GraphON_hall:=True;
  GraphOn_Farad:=True;
  // из Спектра подвижности
  MSLeft:=-2;
  MSRight:=1;
  Coef1:=2.1;
  Coef2:=1.6;
  Mu_min:=0.01;
  Mu_max:=100;
  Min_Spectr:=1e-4;
  RowInFocus:=1;
  SetGridFocus(StringGrid3,RowInFocus);
  AssignFile(Config_File,DefaultDir+'\Data\Config.txt');
  AssignFile(Data_File,DefaultDir+'\Data\Recent_Data.dat');
  LoadConfig;
  ReplacementOfSeparator;
  
  Memo7.Lines.LoadFromFile(DefaultDir+'\Data\FME_Prototype.dat');
  Label46.Caption:='ПРОТОТИП файла .fm';
  Memo16.Lines.LoadFromFile(DefaultDir+'\Data\Farad_Prototype.dat');
  Label39.Caption:='ПРОТОТИП файла .mpc';

  SetLength(MagField_spektr,MaxPoints);
  SetLength(Gxx,MaxPoints);
  SetLength(Gxy,MaxPoints);
  SetLength(GxxExp,MaxPoints);
  SetLength(GxyExp,MaxPoints);

  SetLength(B_spektr,MaxPoints+1);
  SetLength(Gxx_sp,MaxPoints+1);
  SetLength(Gxx_MC,MaxPoints+1);
  SetLength(Gxy_MC,MaxPoints+1);
  SetLength(Gxy_sp,MaxPoints+1);
  SetLength(Xr,MaxPoints+1);
  SetLength(Lv,MaxPoints+1);
  SetLength(Xv,MaxPoints+1);
  SetLength(Mv,MaxPoints+1);
  SetLength(Vpr,MaxPoints+1);

  SetLength(Am,MaxPoints+1,MaxPoints+1);
  SetLength(Qm,MaxPoints+1,MaxPoints+1);
  SetLength(Cl,MaxPoints+1,MaxPoints+1);
  SetLength(Cr,MaxPoints+1,MaxPoints+1);
  SetLength(Cl_t,MaxPoints+1,MaxPoints+1);
  SetLength(Cr_t,MaxPoints+1,MaxPoints+1);
  SetLength(Cm,MaxPoints+1,MaxPoints+1);
  SetLength(Cm_t,MaxPoints+1,MaxPoints+1);

end;

procedure TForm1.CreateTabs;
begin
  
  
  // Создание таблицы
  StringGrid3.Cells[0,1]:='Тяжёлые дырки';
  StringGrid3.Cells[0,2]:='Лёгкие дырки';
  StringGrid3.Cells[0,3]:='Электроны';
  StringGrid3.Cells[1,0]:='Концентрация';
  StringGrid3.Cells[2,0]:='Подвижность';

end;
// возникает при изменении очереди наблюдателей за буфером обмена
procedure TForm1.WMChangeCBChain(var Msg: TWMChangeCBChain);
begin
 if Msg.Remove = FNextViewer then
  FnextViewer:=Msg.Next
 else
  SendMessage(FNextViewer, WM_CHANGECBCHAIN, Msg.Remove, Msg.Next);
end;

// возникает при изменении буфера обмена
procedure TForm1.WMDrawClipboard(var Msg: TWMDrawClipboard);
begin
  SendMessage(FNextViewer, WM_DRAWCLIPBOARD, 0, 0);
end;

////////////////////////////////////////////////////////////////////////////
/////////////////////// НАЧАЛО "ХОЛЛ. ПОДВИЖНОСТЬ" /////////////////////////
////////////////////////////////////////////////////////////////////////////

procedure GetCoef(var A,X:Data_spektr; b:extended;var P0,P1,P2:extended);
var i,j:word;
     r,r1,r2,q,s:extended;
 begin
    p0:=0;p1:=0;p2:=0;
    for i:=0 to NumberOfPoints do
     begin
      r:=1;r1:=0;r2:=0;
      for j:=0 to NumberOfPoints do
       if i<>j then begin
        q:=X[i]-X[j];
        s:=b-X[j];r2:=(r2*s+2*r1)/q;
        r1:=(r1*s+r)/q; r:=r*s/q;
       end;
      p0:=p0+r*A[i];p1:=p1+r1*A[i];p2:=p2+r2*A[i];
     end;
 end;

procedure TForm1.AddPoints2;
var sf,b1,b2:extended;
begin
   with chtSpectr do
    begin
      with BottomAxis do
       begin
        Logarithmic:=true;
        Automatic:=false;
       // Automatic:=true;
        sf:=0.05*(Series[0].MaxXValue-Series[0].MinXValue);
        if (Series[0].MinXValue-sf)>0 then Minimum:=Series[0].MinXValue-sf
            else Minimum:=0.0005;
       Maximum:=Series[0].MaxXValue+sf;
      end;
     with LeftAxis do
      begin
       Logarithmic:=True;
       Automatic:=False;
       // Automatic:=true;
       if Series[0].MaxYValue>Series[1].MaxYValue then
         b1:=Series[0].MaxYValue else b1:=Series[1].MaxYValue;
       if Series[0].MinYValue<Series[1].MinYValue then
         b2:=Series[0].MinYvalue else b2:=Series[1].MinYvalue;
        sf:=0.05*(b1-b2);
       if (b2-sf)>Maximum then
        begin
         Maximum:=b1+sf;
         if (b2-sf)>0 then
                       Minimum:=b2-sf
                      else
                       Minimum:=b2*0.95;

        end
        else begin
         if (b2-sf)>0 then
                       Minimum:=b2-sf
                      else
                       Minimum:=b2*0.95;
         Maximum:=b1+sf;
        end;
      end;
    end;
end;

procedure TForm1.Addpoints(Chart:TChart);
begin
     with Chart do
      begin
      with BottomAxis do
       begin
        Automatic:=True;
      end;
     with LeftAxis do
      begin
        Automatic:=True;
      end;
     end;
end;



procedure TForm1.AddExpPoints;
var i:word;
begin
 with Chart5.Series[1] as TPointSeries do
  begin
   Clear;
   Pointer.HorizSize:=2;
   Pointer.VertSize:=2;
   for i:=0 to NumberOfPoints do
    if MagField_spektr[i]=0 then AddXY(0.001,GxxExp[i],'',clTeeColor)
     else AddXY(MagField_spektr[i],GxxExp[i],'',clTeeColor);
   end;
  with Chart6.Series[1] as TPointSeries do
   begin
    Clear;
    Pointer.HorizSize:=2;
    Pointer.VertSize:=2;
    for i:=0 to NumberOfPoints do
     if MagField_spektr[i]=0 then AddXY(0.001,GxyExp[i],'',clTeeColor)
       else AddXY(MagField_spektr[i],GxyExp[i],'',clTeeColor);
   end;
end;

procedure TForm1.GetLnLimits(var Xmin,Xmax:integer);
var f:extended;
begin
   if MagField_spektr[0]>0 then
    begin
     f:=ln(MagField_spektr[0])/ln(10);
     Xmin:=trunc(f);
    end
     else XMin:=-3;
    f:=ln(MagField_spektr[NumberOfPoints])/ln(10);
    Xmax:=trunc(f);
    if frac(f)>0.001 then Xmax:=Xmax+1;
end;

procedure TForm1.InitArray;
begin
   if IntMagField<>nil then freemem(IntMagField);
   getmem(IntMagfield,SizeData);
   if IntGxx<>nil then freemem(IntGxx);
   getmem(IntGxx,SizeData);
   if IntGxy<>nil then freemem(IntGxy);
   getmem(IntGxy,SizeData);
end;

procedure TForm1.InitArray2;
begin
  if Spectr_e<>nil then freemem(Spectr_e);
   getmem(Spectr_e,SizeData);
   if Spectr_P<>nil then freemem(Spectr_P);
   getmem(Spectr_P,SizeData);
   if Mobility<>nil then freemem(Mobility);
   getmem(Mobility,SizeData);
end;

procedure TForm1.MakeInterpolate;
var temp_l,temp_t,AGxx,AGxy,AField:Data_spektr;
    sf,lm,p,p1:extended;
    i,j:word;
    Lmin,Lmax,k:integer;
procedure CS(var X,F,C:Data_spektr;p1,pn:extended);
var i,j,m:word;
    K:Data_spektr;
    A,B,R:extended;
begin
   K[1]:=0;C[1]:=P1;
   A:=X[1]-X[0];
   B:=X[2]-X[1];
   k[2]:=(3*((F[2]-F[1])/(X[2]-X[1])-(F[1]-F[0])/(X[1]-X[0]))-
       (X[1]-X[0])*C[1])/2/(A+B);
   C[2]:=B/2/(A+B);
   for i:=3 to NumberOfPoints do
    begin
     j:=i-1;m:=j-1;
     A:=X[i]-X[j];B:=X[j]-X[m];R:=2*(A+B)-B*C[j];C[i]:=A/R;
     K[i]:=(3*((F[i]-F[j])/A-(F[j]-F[m])/B)-B*K[j])/R;
    end;
   C[NumberOfPoints]:=K[NumberofPoints]-C[NumberofPoints]*pn;
   for i:=NumberOfPoints-1 downto 2 do C[i]:=K[i]-C[i]*C[i+1];
end;
function Sp(var X,F,C:Data_spektr;x1:extended):extended;
var i,j:word;
    A,B,D,Q,R,P:extended;
begin i:=1; while (X1>X[i]) do inc(i);
 j:=i-1;A:=F[j];B:=X[j];Q:=X[i]-B;
 R:=X1-B;P:=C[i];D:=C[i+1];
 B:=(F[i]-A)/q-(D+2*P)*Q/3;D:=(D-P)/3/Q;
 SP:=A+R*(B+R*(P+D*R));
end;
begin
  SetLength(temp_l,MaxPoints);
  SetLength(temp_t,MaxPoints);
  SetLength(AGxx,MaxPoints);
  SetLength(AGxy,MaxPoints);
  SetLength(AField,MaxPoints);

  //Формируем новые матрицы для расчета производных в точке В=0
  AField[0]:=-MagField_spektr[1];
  AGxx[0]:=GxxExp[1];
  AGxy[0]:=-GxyExp[1];
  for i:=1 to NumberOfPoints do
   begin
    AField[i]:=MagField_spektr[i-1];
    AGxx[i]:=GxxExp[i-1];
    AGxy[i]:=GxyExp[i-1];
   end;

   //Вычисляем производные в точке В=0
   dec(NumberOfPoints);
   GetCoef(AGxx,AField,AField[1],p,p1,A1);
   p1:=0;
   GetCoef(AGxy,AField,AField[1],p,p1,B1);
   B1:=0;

   //Вычисляем производные в точке В=Вмах
   GetCoef(GxxExp,MagField_spektr,MagField_spektr[NumberOfPoints],p,p1,An);
   GetCoef(GxyExp,MagField_spektr,MagField_spektr[NumberOfPoints],p,p1,Bn);
{   An:=0;}
   cs(MagField_spektr,GxxExp,temp_l,A1,An);
   cs(MagField_spektr,GxyExp,temp_t,B1,Bn);

   AddExpPoints;
   With Chart5 do
    begin
     Series[0].Clear;
    end;
   with Chart6 do
    begin
     Series[0].Clear;
    end;
   GetLnLimits(Lmin,Lmax);
   SizeData:=(Lmax-Lmin+1)*sizeof(ImageDat);
   InitArray;
   k:=0;
   for i:=0 to (lmax-lmin) do
    begin
     lm:=exp((lmin+i)*ln(10));
     sf:=lm;
     for j:=1 to PointPerInt-1 do
      begin
       IntMagField^[k]:=sf;
       IntGxx^[k]:=sp(MagField_spektr,GxxExp,temp_l,sf);
       IntGxy^[k]:=sp(MagField_spektr,GxyExp,temp_t,sf);
       Chart5.Series[0].AddXY(IntMagField^[k],IntGxx^[k],'',clTeeColor);
       Chart6.Series[0].AddXY(IntMagField^[k],IntGxy^[k],'',clTeeColor);
       sf:=lm*exp(j/PointPerInt*ln(10));
       if sf>MagField_spektr[NumberofPoints] then break;
       inc(k);
      end;
     if sf>MagField_spektr[NumberofPoints] then break;
    end;
   AddPoints(Chart5);
   AddPoints(Chart6);
end;


procedure GetNoise(var a,b:Data_spektr;err:extended);
 var i:word;
     t1,t2,v1,v2:extended;
 begin
   randomize;
   for i:=1 to NumberOfPoints do begin
    t1:=random;
    t2:=random;
    v1:=sqrt(2*sqr(err)*ln(1/t2))*cos(2*pi*t1);
    a[i]:=a[i]*(1+v1);
    v2:=sqrt(2*sqr(err)*ln(1/t2))*cos(2*pi*t1);
    b[i]:=b[i]*(1+v2);
   end;
 end;

procedure TForm1.MakeMNK( a:boolean);
var tmp_m:mat;
    coef_t,coef_l:Data_spektr;
    kind,i,j,k,Lmin,Lmax:integer;
    lm,sf:extended;
 function pow(x:extended;y:word):extended;
 var p:extended;
     i:word;
  begin
  {if x>0 then
   p:=exp(y*ln(x))
         else  p:=1;}
   p:=1;
   for i:=1 to y do p:=p*x;
   pow:=p;
  end;
procedure BAS(N,M,L:word;X1:extended;var X,T:Data_spektr);
var
  k:word;z,r:extended;
begin
 z:=2*(x1-x[0])/(x[n]-x[0])-1;
 t[0]:=1;
 t[1]:=z;
 for k:=1 to m-1 do
 begin
 r:=z*t[k];
  case L of
    1: r:=r-t[k-1]/4;
    2: r:=2*r-t[k-1];
    3: r:=((k+k+1)*r-k*t[k-1])/(k+1);
  end;
  t[k+1]:=r;
 end;
end;
procedure gram(N,M,L:word;var x,f:Data_spektr; var a:mat);
var i,j,k:integer;
    q,r,s:extended;
    t:Data_spektr;
    p:array of array of extended;
begin
  SetLength(p,MaxPoints,5*MaxPoints);
  SetLength(t,MaxPoints);
 for i:=0 to N do begin bas(n,m,l,x[i],x,t);
  for j:=0 to m do p[j,i]:=t[j]
 end;
 for k:=0 to m do begin
  for j:=k to m do begin s:=0; r:=0;
   for i:=0 to n do begin q:=p[k,i];s:=s+q*p[j,i];
    if j=m then r:=r+q*f[i];
   end; a[k,j]:=s;a[j,k]:=s;
  end; a[k,m+1]:=r;
 end;
end;

procedure gauss(N:word;var a:mat; var x:Data_spektr);
 var i,j,k,k1,n1:word; r,s:extended;
 begin
   n1:=N+1;
   for k:=0 to n do begin k1:=k+1;s:=a[k,k];
    for j:=k1 to n1 do a[k,j]:=a[k,j]/s;
      for i:=k1 to n do begin r:=a[i,k];
          for j:=k1 to n1 do a[i,j]:=a[i,j]-a[k,j]*r
      end;
    end;
     for i:=n downto 0 do begin s:=a[i,n1];
     for j:=i+1 to n do s:=s-a[i,j]*x[j];
     x[i]:=s;
    end;
  end;

procedure fi(n,m,l:word;var c,x:Data_spektr;var x1,s:extended);
var i:word;t:Data_spektr;
begin
  SetLength(t,MaxPoints);
 s:=c[0];
 bas(n,m,l,x1,x,t);
 for i:=1 to m do s:=s+c[i]*t[i]
end;
begin
 {if not(test) then
  begin}
  SetLength(tmp_m,MaxPoints,MaxPoints);
  SetLength(coef_t,MaxPoints);
  SetLength(coef_l,MaxPoints);

   Power_spektr:=3;  // какая-то степень, или мощность, сильно похоже на кол-во типов носителей
   Kind:=2;  // разновидности, тоже пока не ясно зачем и что
   // эти вызовы заполняют матрицу tmp_m
   // которая кстати уже не пустая О_о
   gram(NumberOfPoints,Power_spektr,Kind,MagField_spektr,GxxExp,tmp_m);
   // Гаусс - судя по всему решает матрицу методом Гаусса, сохраняет всё в coef-l
   gauss(Power_spektr,tmp_m,coef_l);
   gram(NumberOfPoints,Power_spektr,Kind,MagField_spektr,GxyExp,tmp_m);
   gauss(Power_spektr,tmp_m,coef_t);
   With Chart5 do
    begin
     Series[0].Clear; // чистим графики компонент
    end;
   with Chart6 do
    begin
     Series[0].Clear;
    end;
   if a then
     begin
      AddExpPoints; // добавляет точки на график, не логарифмически
      GetLnLimits(Lmin,Lmax); // получает пределы, логарифмические
      SizeData:=(Lmax-Lmin+1)*sizeof(ImageDat); // считаем размер данных
      InitArray;  // выделяем его
      k:=0;
      for i:=0 to (lmax-lmin) do
       begin
       lm:=exp((lmin+i)*ln(10));
       sf:=lm;
       for j:=1 to PointPerInt-1 do
        begin
        IntMagField^[k]:=sf;
{        IntGxxExp^[k]:=fi(Power,coef_l,sf);
        IntGxyExp^[k]:=fi(Power,coef_t,sf);}
        // а тут происходит самое страшное - считаются два основных графика
        fi(NumberOfPoints,Power_spektr,Kind,coef_l,MagField_spektr,sf,IntGxx^[k]);
        fi(NumberOfPoints,Power_spektr,Kind,coef_t,MagField_spektr,sf,IntGxy^[k]);
        // и судя по всему ось х - действительно подвижность
        // а ось у - это величины компонент тензора проводимости
        // но они как-то модифицированы
        // видимо в предыдущей функции, надо уточнить
        Chart5.Series[0].AddXY(IntMagField^[k],IntGxx^[k],'',clTeeColor);
        Chart6.Series[0].AddXY(IntMagField^[k],IntGxy^[k],'',clTeeColor);
        sf:=lm*exp(j/PointPerInt*ln(10));
        if sf>MagField_spektr[NumberofPoints] then break;
        inc(k);
       end;
      if sf>MagField_spektr[NumberofPoints] then break;
     end;
     AddPoints(Chart5);
     AddPoints(Chart6);
    end else
    begin
     for i:=0 to NumberOfPoints do
      begin
        fi(NumberOfPoints,Power_spektr,Kind,coef_l,MagField_spektr,sf,GxxExp[i]);
        fi(NumberOfPoints,Power_spektr,Kind,coef_t,MagField_spektr,sf,GxyExp[i]);
      end;
    end;

end;

procedure TForm1.MakeLagranj;
var X,Y,Y1,Y2:extended;
begin
  X:=MagField_spektr[NumberOfPoints]-(MagField_spektr[NumberOfPoints]-
        MagField_spektr[NumberOfPoints-1])/4;
  GetCoef(GxxExp,MagField_spektr,X,Y,Y1,Y2);
  GxxExp[NumberOfPoints+1]:=GxxExp[NumberOfPoints];
  GxxExp[NumberOfPoints]:=Y;
  GetCoef(GxyExp,MagField_spektr,X,Y,Y1,Y2);
  GxyExp[NumberOfPoints+1]:=GxyExp[NumberOfPoints];
  GxyExp[NumberOfPoints]:=Y;
  MagField_spektr[NumberOfPoints+1]:=MagField_spektr[NumberOfPoints];
  MagField_spektr[NumberOfPoints]:=X;
  inc(NumberOfPoints);
end;



procedure Tred2(n:word; tol:extended; var d,e:dat1;
                 var a,z:dat2; var fail:boolean);
{label Skip;}
var
  i,j,k,l  :integer;
  f,g,h,hh :extended;

begin
fail:=false;
for i:=1 to n do
  for j:=1 to i do z[i,j]:=a[i,j];

for i:=n downto 2 do     { ? }
begin
  l:=i-2; f:=z[i,i-1]; g:=0;
  for k:=1 to l do g:=g+sqr(z[i,k]);
{ if g is small and do not sure of orthogonalization then procedure fails }
  h:=g+f*f;
{  if g<=tol then
    begin fail:=true; e[i]:=f; h:=0.; goto Skip end;}

  l:=l+1;
  if f>=0. then begin e[i]:=-sqrt(h); g:=-sqrt(h) end
    else begin e[i]:=sqrt(h); g:=sqrt(h) end;
  h:=h-f*g; z[i,i-1]:=f-g; f:=0.;

  for j:=1 to l do
  begin
    z[j,i]:=z[i,j]/h; g:=0.;
    for k:=1 to j do g:=g+z[j,k]*z[i,k];
    for k:=j+1 to l do g:=g+z[k,j]*z[i,k];
    e[j]:=g/h; f:=f+g*z[j,i]
  end;

  hh:=f/(h+h);
{ matrix reduce }
  for j:=1 to l do
  begin
    f:=z[i,j]; g:=e[j]-hh*f; e[j]:=e[j]-hh*f;
    for k:=1 to j do
      z[j,k]:=z[j,k]-f*e[k]-g*z[i,k]
  end;

{Skip:}
  d[i]:=h
end; { i }

  d[1]:=0; e[1]:=0;
{ store transformation matrix }
  for i:=1 to n do
  begin
    l:=i-1;
    if d[i]<>0. then
      for j:=1 to l do
      begin
        g:=0.;
        for k:=1 to l do g:=g+z[i,k]*z[k,j];
        for k:=1 to l do z[k,j]:=z[k,j]-g*z[k,i]
      end;
      d[i]:=z[i,i]; z[i,i]:=1;
      for j:=1 to l do begin z[i,j]:=0; z[j,i]:=0 end;
  end;
end; { Tred2 }


{ **************************************************************** }

{ J.H.Wilkinson, C.Reinch. Handbook for Automatic Computation.
  Linear Algebra. Springer Verlag: Heidelberg, NewYork, Berlin.
  algorithm II-4.
  Procedure calculate all eigenvalues and eigenvectors
  of real tridiagonal symmetric matrix by QL-algorithm
  with implicit shift.

  Data:
  n - matrix order;
  macheps - smallest possible value such thet 1+macheps>1;
  d - array [1..n] - containts diagonal elements of matrix;
  e - array [1..n] - containts underdiagonal elements of matrix;
   e[1] - arbitraray;
  z - array [1..n,1..n] - unit matrix or matrix of reduction
   to tridiagonal form by Tred2.

  Results:
  d - eigenvalues in increasing order;
  z - eigenvectors (z[i,k],k=1..n);
  e - information is losed.

  Test:
  d=(1,1e2,1e4,1e6,1e8,1e10,1e12);
  e=(0,10,1e3,1e5,1e7,1e9,1e11);
   eigenvalues:         eigenvector for min eigenvalue

  -9.46347415648e8      9.99949513816e-1
  -9.46346919727e2     -1.00974711993e-5
   9.99899020189e-1    -9.99849548745e-3
   1.04633721478e3      9.99850548602e-4
   1.00989903020e6     -1.00974710982e-14
   1.04633771269e9     -9.99850548500e-6
   1.01000000980e12     9.99850548498e-7

  d=(1e12,1e10,1e8,1e6,1e4,1e2,1);
  e=(0,1e11,1e9,1e7,1e5,1e3,10);
   eigenvalues:         eigenvector for min eigenvalue

  -9.46347415707e8      9.99850548432e-7
  -9.46346919876e2     -9.99850548417e-6
   9.99899020157e-1    -1.12526974437e-14
   1.04633721466e3      9.99850548546e-4
   1.00989903020e6     -9.99849548703e-3
   1.04633771265e9     -1.00974740462e-5
   1.01000000980e12     9.99949513813e-1                   }

procedure Imtql2(n:word; macheps:extended; var d,e:dat1;
                 var z:dat2; var fail:boolean);
label Test,Cont,Fail_exit;
var
  i,ia,j,k,m,its  :integer;
  h,c,p,q,s,t,u   :extended;
begin
fail:=false;
for i:=2 to n do e[i-1]:=e[i];
e[n]:=0.; k:=n-1;
for j:=1 to n do
begin
  its:=0;

{ searching of negligibly small underdiagonal element}
Test:
  for m:=j to k do
    if abs(e[m])<=macheps*(abs(d[m])+abs(d[m+1])) then goto Cont;
  m:=n;

Cont:
  u:=d[j];
  if m<>j then
  begin
    if its=30 then begin fail:=true; goto Fail_exit end;
    its:=its+1;
{ formation of shift }
    q:=(d[j+1]-u)/(2*e[j]);
    t:=sqrt(1.+sqr(q));
    if q<0. then q:=d[m]-u+e[j]/(q-t) else q:=d[m]-u+e[j]/(q+t);
    u:=0.; s:=1.; c:=1.;

    for i:=m-1 downto j do
    begin
      p:=s*e[i]; h:=c*e[i];
      if abs(p)>=abs(q)
      then
      begin
        c:=q/p; t:=sqrt(sqr(c)+1.0);
        e[i+1]:=p*t; s:=1./t; c:=c*s;
      end
      else
      begin
        s:=p/q; t:=sqrt(sqr(s)+1.0);
        e[i+1]:=q*t; c:=1./t; s:=s*c
      end;

      q:=d[i+1]-u; t:=(d[i]-q)*s+2.*c*h;
      u:=s*t; d[i+1]:=q+u; q:=c*t-h;

{ calculation of eigenvector }
      for ia:=1 to n do
      begin
        p:=z[ia,i+1];
        z[ia,i+1]:=s*z[ia,i]+c*p;
        z[ia,i]:=c*z[ia,i]-s*p
      end { ia }
    end { i };
    d[j]:=d[j]-u; e[j]:=q; e[m]:=0.; goto Test
  end { m<>j }
end; { j }

{ sorting of eigenvalues and eigenvectors }
for i:=1 to n do
begin
  k:=i; p:=d[i];
  for j:=i+1 to n do
    if d[j]<p then begin k:=j; p:=d[j] end;
  if k<>i then
  begin
    d[k]:=d[i]; d[i]:=p;
    for j:=1 to n do
    begin p:=z[j,i]; z[j,i]:=z[j,k]; z[j,k]:=p end
  end
end; { i }
Fail_exit:
end; { Imtql2 }

function GetElem(j1,k1,i1:word):extended;
 var
  s:extended;
  ii:word;
 begin
    s:=0;
    for  ii:=i1 to (NumberOfPoints-(j1-2)) do
     if j1=2 then begin
       if ii<>k1 then s:=s+sqr(B_spektr[ii]) end else
        if ii<>k1 then s:=s+sqr(B_spektr[ii])*GetElem(j1-1,k1,ii+1);
    GetElem:=s;
 end;


procedure MakeMatrC;
var
 j,k:word;
begin

 for j:=1 to NumberOfPoints do
  for k:=1 to NumberOfPoints do
  begin
    Cr[j,k]:=0;
    Cl[j,k]:=0;
    Cr_t[j,k]:=0;
    Cl_t[j,k]:=0;
    Am[j,k]:=0;

    end;


 for j:=1 to NumberOfPoints do
  for k:=1 to NumberOfPoints do begin
   if j=1 then Cr[j,k]:=1 else
     Cr[j,k]:=GetElem(j,k,1);
     Cl[j,k]:=-Cr[j,k]*B_spektr[k];
    end;
end;

procedure MakeMatrA;
 var i,j,k:word;
 begin
  for j:=1 to NumberOfPoints do
  for k:=1 to NumberOfPoints do begin
    Am[j,k]:=0;
    end;


  for i:=1 to NumberOfPoints do
   for j:=1 to NumberOfPoints do
    if odd(i+j) then
      for k:=1 to NumberOfPoints do
           Am[i,j]:=Am[i,j]+Gxy_sp[k]*Cl_t[k,(i+j-1) shr 1]
               else
       for k:=1 to NumberOfPoints do
           Am[i,j]:=Am[i,j]+Gxx_sp[k]*Cr_t[k,(i+j) shr 1]
 end;

  {if su=0 then det(C)=0}
procedure InverseMatrC(var Ci:dat2;var C:dat2;var Su:extended;NP:word);
  var i,j,k:word;
       at:dat3;
       sr:extended;
  begin
    SetLength(at,MaxPoints+1,2*MaxPoints+1);
  for i:=1 to Np do
   for j:=1 to NP do
      at[i,j]:=Ci[i,j];
   for i:=1 to NP do begin
    for j:=NP+1 to 2*NP do At[i,j]:=0; At[i,i+NP]:=1;
   end;
   for k:=1 to NP do begin Su:=At[k,k]; j:=k;
    for i:=k+1 to NP  do begin Sr:=At[i,k];
     if abs(Sr)>abs(Su) then begin su:=sr; j:=i; end;
    end;
    if su=0 then exit;
    if j<>k then for i:=k to 2*NP do begin
     sr:=at[k,i];at[k,i]:=at[j,i];at[j,i]:=sr;end;
    for j:=k+1 to 2*NP do at[k,j]:=at[k,j]/su;
    for i:=k+1 to NP do begin sr:=at[i,k];
    for j:=k+1 to 2*NP do at[i,j]:=at[i,j]-at[k,j]*sr
   end;
  end;
  if su<>0 then
   for j:=NP+1 to 2*NP do
    for i:=NP-1 downto 1 do begin sr:=at[i,j];
    for k:=i+1 to NP do sr:=sr-at[k,j]*at[i,k];
    at[i,j]:=sr;
   end;
   if su<>0 then
    for i:=1 to Np do
     for j:=1 to NP do
      C[i,j]:=at[i,j+NP];
  end;

function S_s(Mi:extended):extended;
   var im,js:word;
       a,bb:extended;
   begin
     { make Vm }
     Mv[1]:=1;
     if abs(Mi)<1e-26 then
      for im:=2 to NumberOfPoints do Mv[im]:=0 else
     for im:=2 to NumberOfPoints do
      if odd(im) then
       Mv[im]:=exp((im-1)*ln(abs(Mi))) else
       if Mi<0 then Mv[im]:=exp((im-1)*ln(abs(Mi))) else
          Mv[im]:=-exp((im-1)*ln(abs(Mi)));
(*     { compute ¦Vm¦¤}
     vm:=0;
     for is:=1 to NPoint do
       vm:=vm+sqr(Mv[is]);
     { compute am/Go for Hp=0}
     a:=0;
     for is:=1 to NPoint do a:=a+sqr(Mv[is]);*)
     a:=1;
     { compute am/Go }
     for im:=1 to NumberOfPoints do a:=a*(1+sqr(B_spektr[im]*Mi));
     for im:=1 to NumberOfPoints do begin Vpr[im]:=0;
     for js:=1 to NumberOfPoints do
          Vpr[im]:=Vpr[im]+Qm[js,im]*Mv[js];
      Vpr[im]:=sqr(Vpr[im]);end;
     bb:=0;
     for im:=1 to NumberOfPoints do begin
{      if (abs(Lv[im])<1e-30)and(Vpr[im]<1e-15) then continue}
       if (abs(Lv[im])=0)and(Vpr[im]>1e-15) then begin a:=0;break;end;
      bb:=bb+Vpr[im]/abs(Lv[im]); end;
     S_s:=(a/bb);
   end;

//////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
procedure TForm1.MobilitySpectrum;
var
  Sf,lm:extended;
  j,k,i:word;
  Lmin,Lmax:integer;
{  LogAxis,NoLogAxis:boolean;}


begin
   for i:=0 to NumberOfPoints do
    begin
     B_spektr[i+1]:=MagField_spektr[i];
     Gxx_sp[i+1]:=GxxExp[i];
     Gxy_sp[i+1]:=GxyExp[i];
    end;
   inc(NumberOfPoints);
   MakeMatrC;
   InverseMatrC(Cr,Cr_t,Sf,NumberOfPoints);
   if Sf=0 then begin MessageDLG('Определитель равен нулю!',mtError,[mbOK],0);
         dec(NumberOfPoints);
         exit; end;
   if MagField_spektr[0]=0 then begin
    for j:=1 to NumberOfPoints-1 do
    for k:=1 to NumberOfPoints-1 do
     Cm[j,k]:=Cl[j,k+1];
     InverseMatrC(Cm,Cm_t,Sf,NumberOfPoints-1);
      for j:=1 to NumberOfPoints do
       for k:=1 to NumberOfPoints do
        if j=1 then Cl_t[1,k]:=0 else
         if k=NumberOfPoints then Cl_t[j,NumberOfPoints]:=0 else
          Cl_t[j,k]:=Cm_t[j-1,k];
    end else
    InverseMatrC(Cl,Cl_t,Sf,NumberOfPoints);
    MakeMatrA;
    // интересно что это за числа ниже?
    Tred2(NumberOfPoints,6e-4913,Lv,Xv,am,Qm,bulua);
    Imtql2(NumberOfPoints,5.42e-20,Lv,Xv,Qm,bulua);
   with chtSpectr do
    begin
     Series[0].Clear;
     Series[1].Clear;
    end;
   Lmin:=MSLeft;LMax:=MSRight;
   SizeData:=(Lmax-Lmin+1)*sizeof(ImageDat);
   InitArray2;
   k:=0;
   for i:=0 to (lmax-lmin) do
    begin
     lm:=exp((lmin+i)*ln(10));
     sf:=lm;
     for j:=1 to PointPerInt-1 do
      begin
       Mobility^[k]:=sf;
       Spectr_e^[k]:=S_s(-sf);
       Spectr_p^[k]:=S_s(sf);
       chtSpectr.Series[0].AddXY(Mobility^[k],Spectr_e^[k],'',clTeeColor);
       chtSpectr.Series[1].AddXY(Mobility^[k],Spectr_p^[k],'',clTeeColor);
       sf:=lm*exp(j/PointPerInt*ln(10));
       inc(k);
       if sf>10 then break;
      end;
     if sf>10 then break;
    end;
    GridPoints:=k-1;
   AddPoints2;
   dec(NumberOfPoints);
end;


function GxxExpi:extended;
var i:word;
begin
  Result:=0;
  for i:=0 to gridPoints do
   result:=result+Axx^[i]*(QSpectr_p^[i]+QSpectr_e^[i]);
end;

      // Загрузка данных из файла
procedure TForm1.btnLoadTenzorClick(Sender: TObject);
var  i:word;
begin
 OpenDialog2.Title:='Открытие файла с компонентами тензора проводимости';
 if OpenDialog2.Execute then
 begin
     Series5.Clear;
     LineSeries1.Clear;   {чистим графики моя вставка}
     AssignFile(Data_File, OpenDialog2.FileName);  {открываем файл}
     ReplacementOfSeparator;  // заменяем запятые на точки
    try    // обработка ошиок
      Reset(Data_File);   // чистим прошлые данные
      i:=0;
      while not(eof(Data_File)) do  // до конца файла
      begin
       try     // обработка ошиок
        readln(Data_File,MagField_spektr[i],GxxExp[i],GxyExp[i]); // кушаем входные данные
        inc(i);
       except
         on EInOutError do
          begin
           MessageDlg('File I/O error.', mtError, [mbOk], 0);
           break;
          end;
       end;
      end;
      if i>=MaxPoints then
       begin
        MessageDlg('Число элементов превышает максимально допустимое!',mtError,
            [mbOK],0);
        i:=MaxPoints;
       end;
       dec(i);
      NumberOfPoints:=i; // количество точек - 10
      CloseFile(Data_File); // забываем про файл
    except
      on EInOutError do
       begin
        MessageDlg('File I/O error.', mtError, [mbOk], 0);
       end;
    end;
   Label22.Caption:=OpenDialog2.FileName;
   MakeMNK(true);
   MobilitySpectrum;  // спектр подвижности. Начало.
 end;
end;


procedure TForm1.chtSpectrClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var Mu,G_e,G_p,con_p,con_e:extended;
      Ind, Ind2:longint;

begin

with chtSpectr do
   begin
    ind:=Series5.GetCursorValueIndex;
    Ind2:= LineSeries1.GetCursorValueIndex;
    if ind<>-1 then
      begin
       G_p:=Series5.YValue[ind];
       Mu:=Series5.XValue[ind];
       con_p:=g_p/(mu*1.602e-19);
       StringGrid3.Cells[1,RowInFocus]:=FloatToStr(con_p);
       StringGrid3.Cells[2,RowInFocus]:=FloatToStr(Mu);
       if RowInFocus<3 then
         Inc(RowInFocus)
       else
         RowInFocus:=1;
      end;
      if ind2<>-1 then
      begin
       G_e:=LineSeries1.YValue[ind2];
       Mu:=Series5.XValue[ind2];
       con_e:=g_e/(mu*1.602e-19);
       StringGrid3.Cells[1,RowInFocus]:=FloatToStr(-con_e);
       StringGrid3.Cells[2,RowInFocus]:=FloatToStr(-Mu);
       if RowInFocus<3 then
         Inc(RowInFocus)
       else
         RowInFocus:=1;
      end;
   end;

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin

  SetLength(MagField_spektr,0);
  SetLength(Gxx,0);
  SetLength(Gxy,0);
  SetLength(GxxExp,0);
  SetLength(GxyExp,0);

  SetLength(B_spektr,0);
  SetLength(Gxx_sp,0);
  SetLength(Gxx_MC,0);
  SetLength(Gxy_MC,0);
  SetLength(Gxy_sp,0);
  SetLength(Xr,0);
  SetLength(Lv,0);
  SetLength(Xv,0);
  SetLength(Mv,0);
  SetLength(Vpr,0);

  SetLength(Am,0,0);
  SetLength(Qm,0,0);
  SetLength(Cl,0,0);
  SetLength(Cr,0,0);
  SetLength(Cl_t,0,0);
  SetLength(Cr_t,0,0);
  SetLength(Cm,0,0);
  SetLength(Cm_t,0,0);

if IntMagField<>nil then freemem(IntMagField);
   if IntGxx<>nil then freemem(IntGxx);
   if IntGxy<>nil then freemem(IntGxy);
   if Spectr_e<>nil then freemem(Spectr_e);
   if Spectr_P<>nil then freemem(Spectr_P);
   if Mobility<>nil then freemem(Mobility);
   if Axx<>nil then freemem(Axx);
   if Axy<>nil then freemem(Axy);
   if Axx_d<>nil then freemem(Axx_d);
   if Axy_d<>nil then freemem(Axy_d);
end;

procedure TForm1.SetGridFocus(SGrid: TStringGrid; r:integer);
var
 Cell_Focus:TGridRect;

begin
  Cell_Focus.Top:=r;
  Cell_Focus.Bottom:=r;
  Cell_Focus.Left:=0;
  Cell_Focus.Right:=3;
  StringGrid3.Selection:=Cell_Focus;
end;

procedure TForm1.chtSpectrMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  SetGridFocus(StringGrid3,RowInFocus);
end;

procedure TForm1.btnClearSpectrTableClick(Sender: TObject);
var i,j:integer;
begin
  for i:=1 to StringGrid3.RowCount-1 do
  for j:=1 to StringGrid3.ColCount-1 do
  StringGrid3.Cells[j,i]:='';
end;

procedure TForm1.LoadSpektrResults;//Загружает результаты Спектра подвижности
var i:Integer;
   con, mob:Extended;
begin
  con:=0;
  mob:=0;
{$I-}
    Reset(Data_File);
{$I+}
  if IOResult<>0 then
   begin
    ShowMessage('Ошибка открытия файла');
    Exit;
   end
  else
 begin
  try
    Readln(Data_File, NumberOfPoints);
    Readln(Data_File,Max_Value[1],Max_Value[2],Max_Value[3],Max_Value[4],
      Max_Value[5],Max_Value[6]);
    Readln(Data_File,Min_Value[1],Min_Value[2],Min_Value[3],Min_Value[4],
      Min_Value[5],Min_Value[6]);
    

    for i:=1 to StringGrid3.RowCount-1 do
    begin
      Readln(Data_file,con,mob);
      StringGrid3.cells[1,i]:=FloatToStr(con);
      StringGrid3.cells[2,i]:=FloatToStr(mob);
    end;

    
    Label22.Caption:=OpenDialog2.FileName;
    MakeMNK(true);
    MobilitySpectrum;
  except
    ShowMessage('Ошибка загрузки данных');
    Rewrite(Data_File);
  end;
  CloseFile(Data_File);
 end;
end;


procedure TForm1.btnSpectrResultClick(Sender: TObject);
begin
  if ODSpektrRes.Execute then
  begin
     AssignFile(Data_File, ODSpektrRes.FileName);
     ReplacementOfSeparator;
     LoadSpektrResults;
  end;
end;

procedure TForm1.WriteSpektrResults;// Запись результатов Спектра подвижности
var i:Integer;
begin
{$I-}
  Rewrite(Data_File);
{$I+}
  if IOResult<>0 then
   begin
    ShowMessage('Ошибка сохранения файла');
    Exit;
   end
  else
  begin
    Writeln(Data_File, NumberOfPoints+1);
    Writeln(Data_File,Max_Value[1],'	',Max_Value[2],'	',Max_Value[3],'	',
    Max_Value[4],'	',Max_Value[5],'	',Max_Value[6]);
    Writeln(Data_File,Min_Value[1],'	',Min_Value[2],'	',Min_Value[3],'	',
    Min_Value[4],'	',Min_Value[5],'	',Min_Value[6]);
    
          // GxxExp и GxxExp в спектре подвижности играют роль экспериментальных
          // данных.
    for i:=1 to StringGrid3.RowCount-1 do
    Writeln(Data_file,StringGrid3.cells[1,i]+'	'+StringGrid3.cells[2,i]);
    CloseFile(Data_File);
  end;

end;

procedure TForm1.btnSpectrResult1Click(Sender: TObject);
begin
  if SDSpektrRes.Execute then
  begin
    AssignFile(Data_File, SDSpektrRes.FileName);
    if not Interval then  // если таблица не пуста и интервалы рассчитаны, то
    WriteSpektrResults;
  end;
end;

procedure TForm1.StringGrid3SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
 RowInFocus:=ARow;
end;

////////////////////////////////////////////////////////////////////////////
/////////////////////// КОНЕЦ "ХОЛЛ. ПОДВИЖНОСТЬ"///////////////////////////
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////
///////////////// НАЧАЛО "ХОЛЛ. МНОГОЗОННАЯ ПОДГОНКА" //////////////////////
////////////////////////////////////////////////////////////////////////////


procedure TForm1.FileOpen_hall8;
var i:Integer;
begin
{$I-}
  Reset(Data_File);
{$I+}
  if IOResult<>0 then
   begin
    ShowMessage('Ошибка открытия файла');
    Exit;
   end
  else
    begin
       try
         readln(Data_File,NPoint);
         read(Data_File,Max_Value[1],Max_Value[2],Max_Value[3],Max_Value[4],
         Max_Value[5],Max_Value[6]);
         read(Data_File,Min_Value[1],Min_Value[2],Min_Value[3],Min_Value[4],
         Min_Value[5],Min_Value[6]);
         for i:=0 to NPoint-1 do
         readln(Data_File,Magfield_spektr[i],GxxExp[i],GxyExp[i]);
         Memo6.Lines.LoadFromFile(OpenDialog3.FileName);
         Label42.Caption:=OpenDialog3.FileName;
         Button27.Enabled:=True;
         btnFeatOnce.Enabled:=True;
         btnFeatMulti.Enabled:=True;
         N3.Enabled:=True;
         N29.Enabled:=True;
       except
         Button27.Enabled:=False;
         btnFeatOnce.Enabled:=False;
         btnFeatMulti.Enabled:=False;
         N3.Enabled:=False;
         N29.Enabled:=False;
         ShowMessage('Ошибка загрузки данных');
         Rewrite(Data_File);
       end;
       CloseFile(Data_File);
    end;
end;


function func_hall8:Extended;
var   myi                     :integer;
     g,g1,cond1,cond2,cond3:Extended;
begin
for myi:=0 to NPoint-1 do
  begin
  cond1:=Data[4]*Data[1]/(1+sqr(data[1]*Magfield_spektr[myi]));
  cond2:=Data[5]*Data[2]/(1+sqr(data[2]*MagField_spektr[myi]));
  cond3:=Data[6]*Data[3]/(1+sqr(data[3]*MagField_spektr[myi]));
  Gxx[myi]:=e*(cond1+cond2+cond3);
  if myi=0 then
   Gxy[0]:=0
  else
   Gxy[myi]:=(cond1*data[1]+cond2*data[2]+cond3*data[3])
        *MagField_spektr[myi]*e;
  end;
   g:=0;g1:=0;
  for myi:=0 to NPoint-1 do
  begin
     g:=g+sqr((Gxx[myi]-GxxExp[myi])/(GxxExp[myi]+Gxx[myi]));
  
   if myi=0 then g1:=0 else
    begin
     g1:=g1+sqr((Gxy[myi]-GxyExp[myi])/(abs(GxyExp[myi])+abs(Gxy[myi])));
    end;
  end;
   
  func_hall8:=100*(sqrt(g*Ves1)+sqrt(g1*Ves2))/NPoint;
end; { of func }

procedure Graphik_hall8;
var i:Integer;
begin
  
  if GraphON_hall then
  begin
   Form1.Series7.Clear;
   Form1.Series8.Clear;
   Form1.Series9.Clear;
   Form1.Series10.Clear;
   Form1.mmoFeatFunctionValue.Lines.Add(FloatToStr(func_hall8));
   form1.mmoFeatMuElectronValue.Lines.Add(FloatToStr(DATA[1]));
   form1.MemoMnog3.Lines.Add(FloatToStr(DATA[2]));
   form1.MemoMnog4.Lines.Add(FloatToStr(DATA[3]));
   Form1.mmoConcentrationElectrons.Lines.Add(FloatToStr(DATA[4]));
   form1.MemoMnog6.Lines.Add(FloatToStr(DATA[5]));
   form1.MemoMnog7.Lines.Add(FloatToStr(DATA[6]));
   for i:=0 to NPoint-1  do
   begin
     Form1.Series7.AddXY(MagField_spektr[i], Gxx[i]);
     Form1.Series8.AddXY(MagField_spektr[i], GxxExp[i]);
     Form1.Series9.AddXY(MagField_spektr[i], Gxy[i]);
     Form1.Series10.AddXY(MagField_spektr[i], GxyExp[i]);
   end;
   
   Application.ProcessMessages(); // обрабатывает все сообщения поступившие
                                  // приложению
  end;    
end;

procedure Optimiz_hall8;
begin
  if (Form1.Edit7.Text<>'') and (Form1.Edit8.Text<>'') then
    begin
     Ves1:=StrToFloat(Form1.Edit7.Text);
     Ves2:=StrToFloat(Form1.Edit8.Text);
    end
   else
    begin
      Ves1:=1;
      Ves2:=1;
    end;
  Randomize;
  N_Data:=6;
  Registerfunc(func_hall8);
  Registergraph(Graphik_hall8);
  BegRand(1000);   // в данном случае c 1000 гараздо лучше ищет
  hook;
  Graphik_hall8;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  if OpenDialog3.Execute then
  begin
    AssignFile(Data_File,OpenDialog3.FileName);
    ReplacementOfSeparator;
    FileOpen_hall8;
  end;
end;

procedure TForm1.btnFeatOnceClick(Sender: TObject);
begin    // однократная подгонка.
  Pnl_Pr_Hall8.Font.Color:=clRed;
  Pnl_Pr_Hall8.Caption:='Подгонка...';
  GraphON_hall:=True;
  Optimiz_hall8;
  Pnl_Pr_Hall8.Font.Color:=clLime;
  Pnl_Pr_Hall8.Caption:='Готово';
end;

procedure TForm1.btnFeatMultiClick(Sender: TObject);
var  i,l:Integer; fmin:Extended; SerArr:SeriesArray; EditArr:EditArray;
begin
  for l:=1 to 7 do
  SerArr[l]:=Form4.FindComponent('Series'+IntToStr(l)) as TBarSeries;
  for l:=1 to 28 do
  EditArr[l]:=Form4.FindComponent('Edit'+IntToStr(l)) as TEdit;
  fmin:=10e8;
  Form4.ProgressBar1.Max:=100;
  GraphON_hall:=False;
  Form4.Show;
  for l:=1 to 7 do
  begin
    TBarSeries(Form4.FindComponent('Series'+IntToStr(l))).Clear;
    TPointSeries(Form5.FindComponent('Series'+IntToStr(l))).Clear;
  end;
  for l:=1 to 100 do
  begin
    Optimiz_hall8;
    for i:=1 to 6 do
    d1[i,l]:=Data[i];
    d1[7,l]:=func_hall8;
    // Разброс значений ***********************//
    Form5.Series7.AddXY(d1[7,l], l);
    Form5.Series1.AddXY(DATA[1], l);
    Form5.Series2.AddXY(DATA[2], l);
    Form5.Series3.AddXY(DATA[3], l);
    Form5.Series4.AddXY(DATA[4], l);
    Form5.Series5.AddXY(DATA[5], l);
    Form5.Series6.AddXY(DATA[6], l);
    //***************************************//
    if  d1[7,l]<fmin then
    begin
      fmin:=d1[7,l];
      Form4.Edit7.Text:=FloatToStr(fmin);
      for i:=1 to 6 do
      begin
      TEdit(Form4.FindComponent('edit'+IntToStr(i))).Text:=FloatToStr(Data[i]);
      end;
    end;
    Form4.ProgressBar1.Position:=l;
    Application.ProcessMessages(); // обрабатывает все сообщения поступившие
                                  // приложению
  end;
 Gistogram(d1,SerArr,7,100);
 Statistic(d1,EditArr,7,100);
 GraphON_hall:=True;
 ShowGraphics(EditArr, 6, Graphik_hall8);
end;

function TForm1.Interval:Boolean;   // рассчитывает подвижность и концентрацию
var i:Integer;             // 3-х типов носителей в интервале (1%; 150%)
    Stg3_pusto:Boolean;
    max,min:Extended;
begin
  min:=-0.5;
  max:=0.5;
  Stg3_pusto:=False;
  for i:=1 to 3 do
      if (StringGrid3.Cells[1,i]='') or (StringGrid3.Cells[2,i]='') then
         Stg3_pusto:=True;
      if Stg3_pusto then
      begin
        Interval:=True;
        Exit;
      end
      else
      begin
        Max_Value[1]:=RoundTo(StrToFloat(StringGrid3.Cells[2,3])+
        StrToFloat(StringGrid3.Cells[2,3])*min,-6);
        Max_Value[2]:=RoundTo(StrToFloat(StringGrid3.Cells[2,2])+
        StrToFloat(StringGrid3.Cells[2,2])*max,-3);
        Max_Value[3]:=RoundTo(StrToFloat(StringGrid3.Cells[2,1])+
        StrToFloat(StringGrid3.Cells[2,1])*max,-3);
        Max_Value[4]:=RoundTo(StrToFloat(StringGrid3.Cells[1,3])+
        StrToFloat(StringGrid3.Cells[1,3])*min,14);
        Max_Value[5]:=RoundTo(StrToFloat(StringGrid3.Cells[1,2])+
        StrToFloat(StringGrid3.Cells[1,2])*max,15);
        Max_Value[6]:=RoundTo(StrToFloat(StringGrid3.Cells[1,1])+
        StrToFloat(StringGrid3.Cells[1,1])*max,19);
        Min_Value[1]:=RoundTo(StrToFloat(StringGrid3.Cells[2,3])+
        StrToFloat(StringGrid3.Cells[2,3])*max,-3);
        Min_Value[2]:=RoundTo(StrToFloat(StringGrid3.Cells[2,2])+
        StrToFloat(StringGrid3.Cells[2,2])*min,-6);
        Min_Value[3]:=RoundTo(StrToFloat(StringGrid3.Cells[2,1])+
        StrToFloat(StringGrid3.Cells[2,1])*min,-6);
        Min_Value[4]:=RoundTo(StrToFloat(StringGrid3.Cells[1,3])+
        StrToFloat(StringGrid3.Cells[1,3])*max,15);
        Min_Value[5]:=RoundTo(StrToFloat(StringGrid3.Cells[1,2])+
        StrToFloat(StringGrid3.Cells[1,2])*min,14);
        Min_Value[6]:=RoundTo(StrToFloat(StringGrid3.Cells[1,1])+
        StrToFloat(StringGrid3.Cells[1,1])*min,18);
        Interval:=False;
      end;
      
end;

procedure TForm1.Button12Click(Sender: TObject);
var i:Integer;
begin
  if not Interval then // если таблица не пуста и интервалы рассчитаны, то
   begin
    Memo6.Lines.Clear;
    Memo6.Lines.Add(IntToStr(NPoint));
    Memo6.Lines.Add(
          FloatToStr(Max_Value[1])
    +'	'+FloatToStr(Max_Value[2])
    +'	'+FloatToStr(Max_Value[3])
    +'	'+FloatToStr(Max_Value[4])
    +'	'+FloatToStr(Max_Value[5])
    +'	'+FloatToStr(Max_Value[6])
    );
    Memo6.Lines.Add(
          FloatToStr(Min_Value[1])
    +'	'+FloatToStr(Min_Value[2])
    +'	'+FloatToStr(Min_Value[3])
    +'	'+FloatToStr(Min_Value[4])
    +'	'+FloatToStr(Min_Value[5])
    +'	'+FloatToStr(Min_Value[6])
    );
    for i:=0 to NPoint-1 do
    Memo6.Lines.Add(
          FloatToStr(Magfield_spektr[i])
    +'	'+FloatToStr(GxxExp[i])
    +'	'+FloatToStr(GxyExp[i])
    );
    for i:=1 to StringGrid3.RowCount-1 do
    Memo6.Lines.Add(StringGrid3.cells[1,i]+'	'+StringGrid3.cells[2,i]);
    OpenDialog3.FileName:=GetCurrentDir+'\Из спектра подвижности.hs';
    Label42.Caption:=OpenDialog3.FileName;
    Memo6.Lines.SaveToFile(OpenDialog3.FileName);
    Form1.btnFeatOnce.Enabled:=True;
    Form1.btnFeatMulti.Enabled:=True;
    Form1.N29.Enabled:=True;
    Button27.Enabled:=True;
    Button27.Click;
   end
  else
  begin
    Form1.btnFeatOnce.Enabled:=False;
    Form1.btnFeatMulti.Enabled:=False;
    Form1.N29.Enabled:=False;
    Button27.Enabled:=False;
  end;
  
end;

procedure TForm1.Button27Click(Sender: TObject);
begin

  Memo6.Lines.SaveToFile(OpenDialog3.FileName);
  AssignFile(Data_File, OpenDialog3.FileName);
  ReplacementOfSeparator;
  //Memo6.Lines.LoadFromFile(OpenDialog3.FileName);
  FileOpen_hall8;

end;

procedure TForm1.N32Click(Sender: TObject);
begin
  Form4.Show;
end;

procedure TForm1.WriteHall8Res;
var i:Integer;
begin
{$I-}
  Rewrite(Data_File);
{$I+}
  if IOResult<>0 then
   begin
    ShowMessage('Ошибка сохранения файла');
    Exit;
   end
  else
  begin
     Writeln(Data_File,mmoFeatFunctionValue.Lines[mmoFeatFunctionValue.Lines.Count-1]);
     Writeln(Data_File,mmoFeatMuElectronValue.Lines[mmoFeatMuElectronValue.Lines.Count-1]
     +'	'+MemoMnog3.Lines[MemoMnog3.Lines.Count-1]
     +'	'+MemoMnog4.Lines[MemoMnog4.Lines.Count-1]
     +'	'+mmoConcentrationElectrons.Lines[mmoConcentrationElectrons.Lines.Count-1]
     +'	'+MemoMnog6.Lines[MemoMnog6.Lines.Count-1]
     +'	'+MemoMnog7.Lines[MemoMnog7.Lines.Count-1]);
     for i:=0 to NPoint-1 do
     Writeln(Data_File,FloatToStr(MagField_Spektr[i])+'	'+
     FloatToStr(GxxExp[i])+'	'+FloatToStr(GxyExp[i])+'	'+
     FloatToStr(Gxx[i])+'	'+FloatToStr(Gxy[i]));
     CloseFile(Data_File);
  end;
end;

procedure TForm1.btnSaveFeatResultsClick(Sender: TObject);
begin
  if SDHall8Res.Execute then
  begin
    AssignFile(Data_File, SDHall8Res.FileName);
    WriteHall8Res;
  end;
end;

procedure TForm1.LoadHall8Res;
var i:Integer;
    f:Extended;
begin
{$I-}
    Reset(Data_File);
{$I+}
  if IOResult<>0 then
   begin
    ShowMessage('Ошибка открытия файла');
    Exit;
   end
  else
 begin
  try
    Readln(Data_File,f);
    Readln(Data_File,Data[1],Data[2],Data[3],Data[4],Data[5],Data[6]);
    for i:=0 to NPoint-1 do
    Readln(Data_File,Magfield_Spektr[i],GxxExp[i],GxyExp[i],Gxx[i],Gxy[i]);
    Form1.Series7.Clear;
    Form1.Series8.Clear;
    Form1.Series9.Clear;
    Form1.Series10.Clear;
    Form1.mmoFeatFunctionValue.Lines.Add(FloatToStr(f));
    form1.mmoFeatMuElectronValue.Lines.Add(FloatToStr(DATA[1]));
    form1.MemoMnog3.Lines.Add(FloatToStr(DATA[2]));
    form1.MemoMnog4.Lines.Add(FloatToStr(DATA[3]));
    Form1.mmoConcentrationElectrons.Lines.Add(FloatToStr(DATA[4]));
    form1.MemoMnog6.Lines.Add(FloatToStr(DATA[5]));
    form1.MemoMnog7.Lines.Add(FloatToStr(DATA[6]));
   for i:=0 to NPoint-1  do
   begin
     Form1.Series7.AddXY(MagField_spektr[i], Gxx[i]);
     Form1.Series8.AddXY(MagField_spektr[i], GxxExp[i]);
     Form1.Series9.AddXY(MagField_spektr[i], Gxy[i]);
     Form1.Series10.AddXY(MagField_spektr[i], GxyExp[i]);
   end;
  except
    ShowMessage('Ошибка загрузки данных');
    Rewrite(Data_File);
  end;
  CloseFile(Data_File);
 end; 
end;

procedure TForm1.btnLoadFeatResultsClick(Sender: TObject);
begin
  if ODHall8Res.Execute then
  begin
    AssignFile(Data_File, ODHall8Res.FileName);
    ReplacementOfSeparator;
    LoadHall8Res;
  end;
end;

////////////////////////////////////////////////////////////////////////////
///////////////// КОНЕЦ "ХОЛЛ. МНОГОЗОННАЯ ПОДГОНКА" //////////////////////
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////
///////////////////////// НАЧАЛО "ГЕОМЕТРИЯ ФАРАДЕЯ"////////////////////////
////////////////////////////////////////////////////////////////////////////

function func_FP:Extended;
var i:Integer;
    g:Extended;
begin
  g:=0;
  for i:=1 to NPoint do
  begin
    Fp[i]:=Post+(1-Post)/(1+sqr(Data[1]*MagField[i]));
    g:=g+sqr((Fp[i]-FpExp[i]))*ves[i];   // вес из эдитов
  end;

  func_FP:=100*sqrt(g);
end;

procedure Graphik_Farad;
var i:Integer;
begin
  if GraphON_Farad then
  begin
   Form1.Series_FP.Clear;
   Form1.Series_FP_Exp.Clear;
   Form1.Memo10.Lines.Add(FloatToStr(func_FP));
   form1.Memo14.Lines.Add(FloatToStr(DATA[1]));
   form1.Memo15.Lines.Add(FloatToStr(Post));
   for i:=1 to NPoint  do
   begin
     Form1.Series_FP.AddXY(MagField[i], Fp[i]);
     Form1.Series_FP_Exp.AddXY(MagField[i], FpExp[i]);
   end;
   if Mp<>0 then
    begin
     K_trap:=Data[1]/(Mp*(1/Post-1));
     Form1.Edit6.Text:=FloatToStr(K_trap);
    end
   else
     Form1.Edit6.Clear;
   Application.ProcessMessages(); // обрабатывает все сообщения поступившие
                                  // приложению
  end;
end;

procedure Optimiz_fp;  // подгонка
var i:Integer;
begin
  N_Data:=1;
  Randomize;
  Registerfunc(func_FP);
  Registergraph(Graphik_Farad);
  for i:=1 to NPoint do
  ves[i]:=StrToFloat(TEdit(Form1.FindComponent('EditVes'+inttostr(i))).Text);
  BegRand(200);
  Hook;
  Graphik_Farad;
end;

procedure TForm1.Normir;
var i:Integer;
   max_f, min_f:Extended;
begin
  max_f:=0;
  min_f:=10e8;
  for i:=1 to NPoint do
  if FpExp[i]>max_f then
   max_f:=FpExp[i];
  for i:=1 to NPoint do
   FpExp[i]:=FpExp[i]/max_f;
  for i:=1 to NPoint do
  if FpExp[i]<min_f then
  Post:=FpExp[i]; // подкладка
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
  Pnl_Pr_Farad.Font.Color:=clRed;
  Pnl_Pr_Farad.Caption:='Подгонка...';
  GraphOn_Farad:=True;
  Optimiz_fp;
  Pnl_Pr_Farad.Font.Color:=clLime;
  Pnl_Pr_Farad.Caption:='Готово';
end;

procedure TForm1.LoadFaradData; //Читает из файла данные для Геометрии Фарадея
var i, N:Integer;
    Old:Boolean;
begin
{$I-}
    Reset(Data_File);
{$I+}
  if IOResult<>0 then    // обходим ошибку открытия
   begin
    ShowMessage('Ошибка открытия файла');
    Exit;
   end
  else
 begin
  try    // обходим ошибку загрузки
   Readln(Data_File, N);
    if N=11 then
      begin
        Old:=True;
        NPoint:=N;
      end
    else
      begin
        Old:=False;
        NPoint_hm:=N;
      end;

   Readln(Data_File,Max_Value[1]);
   Readln(Data_File,Min_Value[1]);
   Readln(Data_File, Mp);
   if Old then
     begin
      for i:=1 to NPoint do
      Readln(Data_File,Magfield[i],FpExp[i]);
     end
   else
     begin
       for i:=1 to NPoint_hm do
       Readln(Data_File,Magfield[i],FpI[1,i],FpI[2,i]);
      
       Npoint:= NPoint_hm div 2 +1;

       for i:=1 to NPoint_hm do
       begin
         FpI[3,i]:=FpI[1,i]-FpI[2,i];
       end;

       for i:=1 to NPoint do
       begin
         FpExp[Npoint-i+1]:=(FpI[3,NPoint_hm-i+1]+FpI[3,i])/2;
       end;

       for i:=1 to NPoint do
       Magfield[i]:=Magfield[Npoint+i-1];
     end;
    Memo16.Lines.LoadFromFile(Recent_File_Farad);
    Label39.Caption:=Recent_File_Farad;
    Button21.Enabled:=True;
    N37.Enabled:=True;
    button23.Enabled:=True;
    button24.Enabled:=True;
    N6.Enabled:=True;
  except
    Button21.Enabled:=False;
    N37.Enabled:=False;
    button23.Enabled:=False;
    button24.Enabled:=False;
    N6.Enabled:=False;
    ShowMessage('Ошибка загрузки данных');
    Rewrite(Data_File);
  end;
  CloseFile(Data_File);
  Normir;
 end;
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
  if ODFaradData.Execute then
  begin
    Recent_File_Farad:=ODFaradData.FileName;
    AssignFile(Data_File, ODFaradData.FileName);
    ReplacementOfSeparator;
    LoadFaradData;
  end;
end;

procedure TForm1.Button21Click(Sender: TObject); // сохранение изменений и
begin                                            // загрузка
  Memo16.Lines.SaveToFile(Recent_File_Farad);
  AssignFile(Data_File, Recent_File_Farad);
  ReplacementOfSeparator;
  LoadFaradData;
end;

procedure TForm1.Button31Click(Sender: TObject);   // сохранить как
begin
 if SDFaradData.Execute then
  begin
    Recent_File_Farad:=SDFaradData.FileName;
    Memo16.Lines.SaveToFile(SDFaradData.FileName);
    Button21.Enabled:=True;
  end;
end;

procedure TForm1.Button24Click(Sender: TObject);  // многократная подгонка
var l:Integer;   fmin:Extended; SerArr:SeriesArray; EditArr:EditArray;
begin
  SerArr[1]:=Form6.Series1;
  SerArr[2]:=Form6.Series2;
  for l:=1 to 8 do
  EditArr[l]:=Form6.FindComponent('Edit'+IntToStr(l)) as TEdit;
  fmin:=10e8;
  Form6.ProgressBar1.Max:=100;
  GraphOn_Farad:=False;
  Form6.Show;
  Form6.Series1.Clear;
  Form6.Series2.Clear;
  Form7.Series1.Clear;
  Form7.Series2.Clear;
 for l:=1 to 100 do
  begin
    Optimiz_fp;
    d1[1,l]:=Data[1];
    d1[2,l]:=func_FP;
    // Разброс значений ***********************//
    Form7.Series1.AddXY(DATA[1], l);
    Form7.Series2.AddXY(d1[2,l], l);
    //***************************************//
    if  d1[2,l]<fmin then
    begin
      fmin:=d1[2,l];
      Form6.Edit2.Text:=FloatToStr(fmin);
      Form6.Edit1.Text:=FloatToStr(Data[1]);
    end;
    Form6.ProgressBar1.Position:=l;
    Application.ProcessMessages(); // обрабатывает все сообщения поступившие
                                  // приложению
  end;
 Gistogram(d1,SerArr,2,100);
 Statistic(d1,EditArr,2,100);
 GraphOn_Farad:=True;
 ShowGraphics(EditArr,1,Graphik_Farad);
end;

procedure TForm1.WriteFaradRes;
var i:Integer;
begin
{$I-}
  Rewrite(Data_File);
{$I+}
  if IOResult<>0 then
   begin
    ShowMessage('Ошибка сохранения файла');
    Exit;
   end
  else
  begin
     Writeln(Data_File, Memo10.Lines[Memo10.Lines.Count-1]
     +'	'+ Memo14.Lines[Memo14.Lines.Count-1]
     +'	'+Memo15.Lines[Memo15.Lines.Count-1]+'	'+Edit6.Text);
     for i:=1 to NPoint do
     Writeln(Data_File,FloatToStr(MagField[i])+'	'+
     FloatToStr(FpExp[i])+'	'+FloatToStr(Fp[i]));
     for i:=1 to NPoint do
     Writeln(Data_File,FloatToStr(Ves[i]));
     CloseFile(Data_File);
  end;
end;

procedure TForm1.Button26Click(Sender: TObject);
begin
 if SDFaradRes.Execute then
  begin
    AssignFile(Data_File, SDFaradRes.FileName);
    WriteFaradRes;
  end;
end;

procedure TForm1.LoadFaradRes;
var i:Integer;
    f:Extended;   // значение функции
begin
{$I-}
    Reset(Data_File);
{$I+}
  if IOResult<>0 then
   begin
    ShowMessage('Ошибка открытия файла');
    Exit;
   end
  else
 begin
  try
    Readln(Data_File,f,Data[1],Post,K_trap);
    for i:=1 to NPoint do
    Readln(Data_File,Magfield[i],FpExp[i],Fp[i]);

    for i:=1 to NPoint do
    begin
      Readln(Data_File,Ves[i]);
      TEdit(Form1.FindComponent('EditVes'+inttostr(i))).Text:=
      FloatToStr(Ves[i]);
    end;

     // ниже из Graphik
     Form1.Series_FP.Clear;
     Form1.Series_FP_Exp.Clear;
     form1.Memo10.Lines.Add(FloatToStr(f));
     form1.Memo14.Lines.Add(FloatToStr(DATA[1]));
     form1.Memo15.Lines.Add(FloatToStr(Post));
     Edit6.Text:=FloatToStr(K_trap);
     for i:=1 to NPoint  do
     begin
       Form1.Series_FP.AddXY(MagField[i], Fp[i]);
       Form1.Series_FP_Exp.AddXY(MagField[i], FpExp[i]);
     end;

  except
    ShowMessage('Ошибка загрузки данных');
    Rewrite(Data_File);
  end;
  CloseFile(Data_File);
 end; 
end;

procedure TForm1.Button25Click(Sender: TObject);
begin
 if ODFaradRes.Execute then
  begin
    AssignFile(Data_File, ODFaradRes.FileName);
    ReplacementOfSeparator; // заменяем запятые
    LoadFaradRes;    // загружаем данные
  end;
end;

procedure TForm1.N35Click(Sender: TObject);
begin
 Form6.Show;
end;

////////////////////////////////////////////////////////////////////////////
///////////////// КОНЕЦ "ГЕОМЕТРИЯ ФАРАДЕЯ" ////////////////////////////////
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////
///////////////////////// НАЧАЛО "FME" /////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
{**************** F U N new ************************************************}

procedure FUNnew(B,Sm11,Sm21,Tau1 :Extended);
// вычисляет составляющие компоненты ФП и ФМЭ
// на вход подаются массивы со значениями магнитного поля и
// подгоняемыми параметрами
var
 A2,TetaE,TetaP,Dn,Vd,L1,L2,s,C1,C2,z,Int,Delta:Extended;
 k:integer;
begin
  TetaE:=muE1*B;
  TetaP:=muP*B;
  Dn:=muE1/EKT/(1+sqr(TetaE));
  for k:=0 to 1 do
   begin
     Vd:=muE1*(TetaE+TetaP)*Ex*k/(1+sqr(TetaE));
     s:=Vd/2/Dn;
     L1:=-s+sqrt(sqr(s)+1/Dn/tau1);
     L2:=-s-sqrt(sqr(s)+1/Dn/tau1);
     A2:=-Alfa*exp(-Alfa0*w1)/(Dn*sqr(Alfa)-Vd*Alfa-1/tau1);
     z:=(Dn*L1+Vd-Sm11)*(Dn*L2+Vd+Sm21)*exp(L1*w1+L2*w2)-
        (Dn*L2+Vd-Sm11)*(Dn*L1+Vd+Sm21)*exp(L1*w2+L2*w1);
     C1:=(A2*(Dn*Alfa-Vd+Sm11)-g_s)*(Dn*L2+Vd+Sm21)*exp(L2*w2);
     C2:=-(A2*(Dn*Alfa-Vd+Sm11)-g_s)*(Dn*L1+Vd+Sm21)*exp(L1*w2);
     Int:=C1/z/L1*(exp(L1*w2)-exp(L1*w1))+C2/z/L2*(exp(L2*w2)-exp(L2*w1))-
     A2/Alfa*(exp(-Alfa*(w2-w1))-1);
     Delta:=C1/z*exp(L1*w1)+C2/z*exp(L2*w1)+A2-
            (C1/z*exp(L1*w2)+C2/z*exp(L2*w2)+A2*exp(-Alfa*(w2-w1)));
    if k=1 then
        begin
            UPh:=((muE1+muP)*(1-TetaE*TetaP)/(1+sqr(TetaE))+K_trap*muP)*Ex*Int;
            UGrad:=0;
            UDif:=Dn*(TetaE+TetaP)*Delta;
        end
    else
      begin
        UGrad0:=0;
        UDif0:=Dn*(TetaE+TetaP)*Delta;
      end;
   end;
  
end;
{*--------------------------------------------------------------------------*}


{$F+}
{************************* F U N C ******************************************}
{U=UFp+UGrad+UDif}
function func:Extended; // вычисляет значение минимизируемой функции
var
     i,num                    :integer;
     Sum,g,g1,k               :Extended;

begin
Sum:=0;
  for i:=1 to NPoint_hm do  // вычисляется ФП и ФМЭ для каждой точки В
  begin
    FUNnew(MagField_FME[i],Data[1],Data[2],Data[3]);
    Fpe[i]:=(UPh+UGrad+UDif);
    Fm[i]:=(UDif0+UGrad0);
  end;
   num:=NPoint_hm div 2 + 1;
   k:=FpeExp[num]/fpe[num];   // коэффициент масштаба
 for i:=1 to NPoint_hm do
 begin
   Fpe[i]:=Fpe[i]*k;
   Fm[i]:=Fm[i]*k;
   g:=(Fpe[i]-FpeExp[i]);
   g1:=(Fm[i]-FmExp[i]);
{  g:=(Fpe[i]/MaxU[2]-FpeExp[i]/MaxU[1]);
  g1:=(Fm[i]/MaxU[4]-FmExp[i]/MaxU[3]);
{  g:=(Fpe[i]/MaxU[2]-FpeExp[i]/MaxU[1]);
  g1:=(Fm[i]/MaxU[4]-FmExp[i]/MaxU[3])*1;}
{  g1:=FpeExp[N+1]*(Fm[i]/Fpe[N+1]/(1.0+A1)-FmExp[i]/FpeExp[N+1])/FmExp[1];}
{   g:=(Fpe[i]/MaxU[2]-FpeExp[i]/MaxU[1])/(abs(Fpe[i]/MaxU[2])+abs(FpeExp[i]/MaxU[1]));}
{   g:=(Fpe[i]/Fpe[num]-FpeExp[i]/FpeExp[num])/(abs(Fpe[i]/Fpe[num])+abs(FpeExp[i]/FpeExp[num]));}
{  if FmExp[i]<>0 then g1:=(Fm[i]/MaxU[4]-FmExp[i]/MaxU[3])/(abs(Fm[i]/MaxU[4])+abs(FmExp[i]/MaxU[3]))
  else g1:=0;}

 {  g1:=(Fm[i]/(Fm[NPoint])-FmExp[i]/(FmExp[NPoint]));
   g:=(Fpe[i]/abs(Fpe[NPoint div 2])-FpeExp[i]/abs(FpeExp[NPoint div 2]));}
{  g:=((Fpe[i]+Data[6]*Fpe[NPoint div 2])/Fpe[NPoint div 2]/(1.0+Data[6])-FpeExp[i]/FpeExp[NPoint div 2]);}

  Sum:=Sum+sqr(g)*1+sqr(g1)*1;
 end;

 func:=100.*sqrt(Sum);   // целевая функция

end;
{*--------------------------------------------------------------------------*}
{$F-}
{**************************** GRAPHIK ***************************************}
procedure Graphik_FME;
var i:Integer;
begin
  if GraphON_FME then
  begin
   Form1.Series1.Clear;
   Form1.Series2.Clear;
   Form1.Series3.Clear;
   Form1.Series4.Clear;
   Form1.Memo1.Lines.Add(FloatToStr(func));
   form1.Memo2.Lines.Add(FloatToStr(DATA[1]));
   form1.Memo3.Lines.Add(FloatToStr(DATA[2]));
   form1.Memo4.Lines.Add(FloatToStr(DATA[3]));
   form1.Edit9.Text:=FloatToStr(muE1);
   for i:=1 to NPoint_hm  do
   begin
     Form1.Series1.AddXY(MagField_FME[i], Fpe[i]);
     Form1.Series2.AddXY(MagField_FME[i], FpeExp[i]);
     Form1.Series3.AddXY(MagField_FME[i], Fm[i]);
     Form1.Series4.AddXY(MagField_FME[i], FmExp[i]);
   end;
   Application.ProcessMessages(); // обрабатывает все сообщения поступившие
                                  // приложению
  end;
end;
{----------------------------------------------------------------------------}

procedure TForm1.Scale_FME(FpFme:Holl);     // усреднение ФП и ФМЭ
var i, n:Integer;
    max:Extended;
begin
  {for i:=1 to NPoint_hm do
  Memo7.Lines.Add(FloatToStr(FpFme[1,i])+'     '+FloatToStr(FpFme[2,i])
  +'     '+FloatToStr(FpFme[3,i]));   }
  max:=1e-9;
  for i:=1 to NPoint_hm do
  begin       // усреднили ФП по I
    FpFme[1,i]:=FpFme[1,i]-FpFme[2,NPoint_hm-i+1];
             // усреднили ФМЭ по B
    FpFme[4,i]:=FpFme[3,NPoint_hm-i+1]-FpFme[3,i];
  end;
  n:=NPoint_hm div 2+1;
  for i:=1 to n do
  begin         // получили ФМЭ
    FpFme[2,i]:=-FpFme[4,i];
    FpFme[2,n+i-1]:=FpFme[4,n-i+1];
  end;
  for i:=1 to NPoint_hm do
  begin
    FpFme[2,i]:=FpFme[2,i]*(StrToFloat(ComboBox5.Text)/
    StrToFloat(ComboBox3.Text))*(StrToFloat(ComboBox6.Text)/
    StrToFloat(ComboBox4.Text));
  end;
  for i:=1 to NPoint_hm do  // поиск максимума
   if FpFme[1,i]>max then max:=FpFme[1,i];
  for i:=1 to NPoint_hm do
  begin        // нормирование
    FpFme[1,i]:=FpFme[1,i]/max;
    FpFme[2,i]:=FpFme[2,i]/max;
  end;
  for i:=1 to NPoint_hm do
  begin
    FmExp[i]:=FpFme[2,i];
    FpeExp[i]:=FpFme[1,i];
    Memo8.Lines.Add(FloatToStr(MagField_FME[i])+'	'+
    FloatToStr(FpeExp[i])+'	'+FloatToStr(FmExp[i]));
  end;
 { for i:=1 to NPoint_hm do
  Memo7.Lines.Add(FloatToStr(FmExp[i])+'     '+FloatToStr(FpeExp[i])); }
end;

procedure TForm1.LoadFMEData;  // открытие файла
var FpFme_In:Holl; {1 - ФП+, 2 - ФП-, 3 - ФМЭ, 4 - буфер}
     i:Integer;
begin

  if (ComboBox3.Text='') or  (ComboBox4.Text='') or (ComboBox5.Text='') or
     (ComboBox6.Text='')
  then
    begin
      ShowMessage('Заполните все поля!');
      Exit;
    end;
  K_trap:=0;
{$I-}
  Reset(Data_File);
{$I+}
  if IOResult<>0 then
   begin
    ShowMessage('Ошибка открытия файла');
    Exit;
   end
  else
    begin
      try
        // Подвижность дырок, толщина образца, тянущее поле.
        read(Data_File,muP,D,Ex,Alfa,Alfa0,K_trap);
        // Максимальные и минимальные значения подгоняемых параметров
        readln(Data_File,Max_Value[1],Max_Value[2],Max_Value[3]);
        readln(Data_File,Min_Value[1],Min_Value[2],Min_Value[3]);
        Readln(Data_File, muE1);
        w1:={2.11e-6}0.62e-6;w2:=d+w1;g_s:=(1-exp(-Alfa0*w1));
        for i:=1 to NPoint_hm do 
          begin
             // чтение магнитополевых зависимостей ФП и ФМЭ
             readln(Data_File,Magfield_FME[i],FpFme_In[1,i],
             FpFme_In[2,i], FpFme_In[3,i]);
             RoExp[i]:=1.1;
          end;
        Memo8.Lines.Clear;
        Memo8.Lines.Add('B	Uфп	Uфмэ');
        Scale_FME(FpFme_In);
        Memo7.Lines.LoadFromFile(Recent_File_FME);
        Label46.Caption:=Recent_File_FME;
        N2.Enabled:=True;    // активация клавиш
        N41.Enabled:=True;
        Button2.Enabled:=True;
        Button3.Enabled:=True;
        Button28.Enabled:=True;
      except
        N2.Enabled:=False;
        N41.Enabled:=False;
        Button2.Enabled:=False;
        Button3.Enabled:=False;
        Button28.Enabled:=False;
        ShowMessage('Ошибка загрузки данных');
        Rewrite(Data_File);
      end;
      CloseFile(Data_File);
    end;
end;


procedure Optimiz_fme;  // подгонка
begin
  N_Data:=3;
  Randomize;
  Registerfunc(func);
  Registergraph(Graphik_FME);
  BegRand(100);
  Hook;
  Graphik_FME;
end;


                 // запуск подгонки
procedure TForm1.Button2Click(Sender: TObject);
begin
  Pnl_Pr_FME.Font.Color:=clRed;
  Pnl_Pr_FME.Caption:='Подгонка...';
  GraphON_FME:=True;
  Optimiz_fme;
  Pnl_Pr_FME.Font.Color:=clLime;
  Pnl_Pr_FME.Caption:='Готово';
end;
                 // открыть
procedure TForm1.Button4Click(Sender: TObject);
begin
  if ODFMEData.Execute then
  begin
    Recent_File_FME:=ODFMEData.FileName;
    AssignFile(Data_File, ODFMEData.FileName);
    ReplacementOfSeparator;
    LoadFMEData;
  end;
end;

procedure TForm1.Button28Click(Sender: TObject);
begin
  Memo7.Lines.SaveToFile(Recent_File_FME);
  AssignFile(Data_File, Recent_File_FME);
  ReplacementOfSeparator;
  LoadFMEData;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  GraphON_FME:=True;
  Optimiz_fme;
end;

procedure TForm1.N100Click(Sender: TObject);
var l:Integer;   fmin:Extended; SerArr:SeriesArray; EditArr:EditArray;
begin
  SerArr[1]:=Form2.Series1;
  SerArr[2]:=Form2.Series2;
  SerArr[3]:=Form2.Series3;
  SerArr[4]:=Form2.Series4;
  for l:=1 to 16 do
  EditArr[l]:=Form2.FindComponent('Edit'+IntToStr(l)) as TEdit;
  fmin:=10e8;
  Form2.ProgressBar1.Max:=100;
  GraphON_FME:=False;
  Form2.Show;
  Form2.Series1.Clear;
  Form2.Series2.Clear;
  Form2.Series3.Clear;
  Form2.Series4.Clear;
  Form3.Series1.Clear;
  Form3.Series2.Clear;
  Form3.Series3.Clear;
  Form3.Series4.Clear;
  for l:=1 to 100 do
  begin
    Optimiz_fme;
    d1[1,l]:=Data[1];
    d1[2,l]:=Data[2];
    d1[3,l]:=Data[3];
    d1[4,l]:=func;
    // Разброс значений ***********************//
    Form3.Series4.AddXY(d1[4,l], l );
    Form3.Series1.AddXY(DATA[1], l);
    Form3.Series2.AddXY(DATA[2], l);
    Form3.Series3.AddXY(DATA[3]*power(10,9), l);
    //***************************************//    
    if  d1[4,l]<fmin then
    begin
      fmin:=d1[4,l];
      Form2.Edit4.Text:=FloatToStr(fmin);
      Form2.Edit1.Text:=FloatToStr(Data[1]);
      Form2.Edit2.Text:=FloatToStr(Data[2]);
      Form2.Edit3.Text:=FloatToStr(Data[3]);
    end;
    Form2.ProgressBar1.Position:=l;
    Application.ProcessMessages(); // обрабатывает все сообщения поступившие
                                  // приложению
  end;
 Gistogram(d1,SerArr,4,100);
 Statistic(d1,EditArr,4,100);
 GraphON_FME:=True;
 ShowGraphics(EditArr,3,Graphik_FME);
end;

procedure TForm1.N8Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.WriteFMERes;
var i:Integer;
begin
{$I-}
  Rewrite(Data_File);
{$I+}
  if IOResult<>0 then
   begin
    ShowMessage('Ошибка сохранения файла');
    Exit;
   end
  else
  begin
     Writeln(Data_File,
     Memo1.Lines[Memo1.Lines.Count-1]
     +'	'+Memo2.Lines[Memo2.Lines.Count-1]
     +'	'+Memo3.Lines[Memo3.Lines.Count-1]
     +'	'+Memo4.Lines[Memo4.Lines.Count-1]
     +'	'+Edit9.Text
     );
     Writeln(Data_File,
          FloatToStr(muP)
     +'	'+FloatToStr(D)
     +'	'+FloatToStr(Ex)
     +'	'+FloatToStr(Alfa)
     +'	'+FloatToStr(Alfa0)
     +'	'+FloatToStr(K_trap)
     );
     for i:=1 to NPoint_hm do
     Writeln(Data_File,FloatToStr(MagField_FME[i])+'	'+
     FloatToStr(FmExp[i])+'	'+FloatToStr(FpeExp[i])+'	'+
     FloatToStr(Fm[i])+'	'+FloatToStr(Fpe[i]));
     CloseFile(Data_File);
  end;
end;

procedure TForm1.Button29Click(Sender: TObject);
begin
  if SDFMERes.Execute then
  begin
    AssignFile(Data_File, SDFMERes.FileName);
    WriteFMERes;
  end;
end;

procedure TForm1.LoadFMERes;
var i:Integer;
    f:Extended;
begin
{$I-}
    Reset(Data_File);
{$I+}
  if IOResult<>0 then
   begin
    ShowMessage('Ошибка открытия файла');
    Exit;
   end
  else
 begin
  try
    Readln(Data_File,f,Data[1],Data[2],Data[3], MuE1);
    Readln(Data_File,muP,D,Ex,Alfa,Alfa0,K_trap);
    w1:={2.11e-6}0.62e-6;w2:=d+w1;g_s:=(1-exp(-Alfa0*w1));
    for i:=1 to NPoint_hm do
    Readln(Data_File,Magfield_FME[i],FmExp[i],FpeExp[i],Fm[i],Fpe[i]);

    Form1.Series1.Clear;
    Form1.Series2.Clear;
    Form1.Series3.Clear;
    Form1.Series4.Clear;
    Form1.Memo1.Lines.Add(FloatToStr(f));
    form1.Memo2.Lines.Add(FloatToStr(DATA[1]));
    form1.Memo3.Lines.Add(FloatToStr(DATA[2]));
    form1.Memo4.Lines.Add(FloatToStr(DATA[3]));
    form1.Edit9.Text:=FloatToStr(muE1);
    for i:=1 to NPoint_hm  do
    begin
      Form1.Series1.AddXY(MagField_FME[i], Fpe[i]);
      Form1.Series2.AddXY(MagField_FME[i], FpeExp[i]);
      Form1.Series3.AddXY(MagField_FME[i], Fm[i]);
      Form1.Series4.AddXY(MagField_FME[i], FmExp[i]);
    end;
  except
    ShowMessage('Ошибка загрузки данных');
    Rewrite(Data_File);
  end;
  CloseFile(Data_File);
 end; 
end;


procedure TForm1.Button5Click(Sender: TObject);
begin
  if ODFMERes.Execute then
  begin
    AssignFile(Data_File, ODFMERes.FileName);
    ReplacementOfSeparator; // заменяем запятые
    LoadFMERes;    // загружаем данные
  end;
end;

procedure TForm1.Button30Click(Sender: TObject);
begin
  if SDFMEData.Execute then
  begin
    Recent_File_FME:=SDFMEData.FileName;
    Memo7.Lines.SaveToFile(SDFMEData.FileName);
    Button28.Enabled:=True;
  end;
end;

    // рисует гистограмму
procedure TForm1.Gistogram(mass:DataValue; Ser:SeriesArray; m,n:integer);
var l, ll, d, interval:integer;
    d_max, d_min, step:Extended;
    gist:array[1..9, 0..100] of Integer;
begin
  interval:=30;
  for ll:=1 to m do
  for l:=0 to interval-1 do
  gist[ll, l]:=0;
  for ll:=1 to m do
  begin
    d_min:=Power(10,8);
    d_max:=0;
    for l:=1 to n do
    begin
      if mass[ll,l]>d_max then d_max:=mass[ll,l];
      if mass[ll,l]<d_min then d_min:=mass[ll,l];
    end;
    step:=(d_max-d_min)/interval;
    if step=0 then step:=1;
    for l:=1 to n do
    begin
      d:=Trunc((mass[ll,l]-d_min)/step);
      inc(gist[ll,d]);
    end;

    case ll of
    1:begin
      for l:=0 to interval-1 do
      Ser[1].AddXY(d_min+l*step,gist[ll,l]);
      end;

    2:begin
      for l:=0 to interval-1 do
      Ser[2].AddXY(d_min+l*step,gist[ll,l]);
      end;

    3:begin
      for l:=0 to interval-1 do
       if m=4 then
         Ser[3].AddXY((d_min+l*step)*power(10,9),gist[ll,l])
       else
         Ser[3].AddXY((d_min+l*step),gist[ll,l]);
      end;

    4:begin
      for l:=0 to interval-1 do
      Ser[4].AddXY(d_min+l*step,gist[ll,l]);
      end;

    5:begin
      for l:=0 to interval-1 do
      Ser[5].AddXY(d_min+l*step,gist[ll,l]);
      end;

    6:begin
      for l:=0 to interval-1 do
      Ser[6].AddXY(d_min+l*step,gist[ll,l]);
      end;

    7:begin
      for l:=0 to interval-1 do
      Ser[7].AddXY(d_min+l*step,gist[ll,l]);
      end;
    end;
  end;

end;
    // расчет среднего и СКО
procedure TForm1.Statistic(mass:DataValue; Edit:EditArray; m,n:Integer);
var  ll,l:integer;
     Xsr, S:Extended;
begin
  for ll:=1 to m do
  begin
     Xsr:=0;
     S:=0;
    for l:=1 to n do
    Xsr:=Xsr+mass[ll,l];
    Xsr:=Xsr/n;
    for l:=1 to n do
    S:=S+Sqr(mass[ll,l]-Xsr);
    S:=Sqrt(s/(n-1));
    Edit[ll+m].Text:=FloatToStr(Xsr);
    Edit[ll+2*m].Text:=FloatToStr(S);
    Edit[ll+3*m].Text:=FloatToStr((S/abs(Xsr))*100); // %
  end;
end;

procedure TForm1.ShowGraphics(Edit:EditArray; n:Integer; Graph:Proc);
var  l:integer;
begin
  for l:=1 to n do
  Data[l]:=StrToFloat(Edit[l].Text);
  Graph;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
  form3.Show;
end;
//////////////////////////////////////////////////////////////////////////////
////////////////////////// КОНЕЦ "FME" ///////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
////////////////////// ПРОЦЕДУРЫ ДЛЯ ЗАГРУЗКИ И СОХРАНЕНИЯ////////////////////
//////////////////////////////////////////////////////////////////////////////

procedure TForm1.ReplacementOfSeparator;   // Убирает запятые из файла
var j,position,size_m:Integer;
    MiniString, MaxiString:string;

begin
  MiniString:='';
  MaxiString:='';
{$I-}
    Reset(Data_File);
{$I+}
  if IOResult<>0 then
   begin
    ShowMessage('Ошибка открытия файла');
    Exit;
   end
  else
    begin
     while not Eof(Data_File) do // Убираем запятые, если они есть,
                            // и заменяем их на '.'
      begin
        Readln(Data_File,  ministring);
        size_m:=SizeOf(MiniString);
        for j:=0 to size_m+1 do
        begin
          position:=Pos(',',MiniString);
          if position<>0 then
          MiniString[position]:='.';
        end;

        MaxiString:=MaxiString+MiniString+#13#10;
      end;
      CloseFile(Data_File);
    end;

  Rewrite(Data_File);    // Переписываем файл без запятых
  Write(Data_File, MaxiString);
  CloseFile(Data_File);
end;

procedure TForm1.LoadConfig;
begin
{$I-}
    Reset(Config_File);
{$I+}
  if IOResult<>0 then    // обходим ошибку открытия
   begin
    ShowMessage('Ошибка открытия файла конфигураций');
    Exit;
   end
  else
 begin
  try    // обходим ошибку загрузки
   Readln(Config_File, NPoint_hm);
   Readln(Config_File, NPoint);
  except
    ShowMessage('Ошибка загрузки конфигураций');
    Rewrite(Config_File);
    Writeln(Config_File,21);
    Writeln(Config_File,11);
  end;
  CloseFile(Config_File);
 end;
end;



/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////

procedure TForm1.TabSheet8Show(Sender: TObject);
begin
  if Recent_File_FME<>'' then
    AssignFile(Data_File,Recent_File_FME);
end;

procedure TForm1.TabSheet6Show(Sender: TObject);
begin
  if Recent_File_Farad<>'' then
    AssignFile(Data_File,Recent_File_Farad);
end;

procedure TForm1.TabSheet9Show(Sender: TObject);
begin
  if OpenDialog3.FileName<>'' then
    AssignFile(Data_File,OpenDialog3.FileName);
end;

/////////////////////////////////////////////////////////////////////////////
/////////////////НАЧАЛО "МОДЕЛИРОВАНИЕ"//////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////

procedure TForm1.LoadModelData; // загрузка данных для ФП и ФМЭ
var i:Integer;
begin
   D:=10e-6;
   Ex:=StrToFloat(form1.Edit16.Text);
   Alfa:=2.055e6;
   Alfa0:=2.13e6;
   K_trap:=StrToFloat(form1.Edit15.Text);
   muE1:=StrToFloat(form1.Edit11.Text);
   muP:=StrToFloat(form1.Edit10.Text);
   w1:=0.62e-6;w2:=d+w1;g_s:=(1-exp(-Alfa0*w1));
   for i:=1 to NPoint_hm do
   begin
      Fpe[i]:=0;
      Fm[i]:=0;
   end;
end;

procedure TForm1.Button33Click(Sender: TObject); // строим ФП
var
     i:integer;
begin
  Chart12.Title.Text.Clear;
  Chart12.Title.Text.Add('Фотопроводимоть');
  Chart12.Legend.Visible:=True;
  LoadModelData; // загружаем данные для построения сигналов
  Form1.LineSeries2.Clear;
  Form1.Series6.Clear;
  Memo5.Lines.Clear;
  Memo5.Lines.Add('B	Uфп');
  for i:=1 to NPoint_hm do  // вычисляется ФП для каждой точки В
  begin
    MagField_FME[i]:=0.2*(i-1)-2;
    FUNnew(MagField_FME[i],StrToFloat(form1.Edit13.Text),
    StrToFloat(form1.Edit14.Text),StrToFloat(form1.Edit12.Text));
    Fpe[i]:=(UPh+UGrad+UDif)*10e6;
    Form1.LineSeries2.AddXY(MagField_FME[i], Fpe[i]);
    Memo5.Lines.Add(FloatToStr(MagField_FME[i])+'	'+FloatToStr(Fpe[i]));
  end;

end;

procedure TForm1.Button32Click(Sender: TObject); // строим ФМЭ
var
     i:integer;
begin
  Chart12.Title.Text.Clear;
  Chart12.Title.Text.Add('Фотомагнитный эффект');
  Chart12.Legend.Visible:=True;
  LoadModelData; // загружаем данные для построения сигналов
  Form1.LineSeries2.Clear;
  Form1.Series6.Clear;
  Memo5.Lines.Clear;
  Memo5.Lines.Add('B	Uфмэ');
  for i:=1 to NPoint_hm do  // вычисляется ФМЭ для каждой точки В
  begin
    MagField_FME[i]:=0.2*(i-1)-2;
    FUNnew(MagField_FME[i],StrToFloat(form1.Edit13.Text),
    StrToFloat(form1.Edit14.Text),StrToFloat(form1.Edit12.Text));
    Fm[i]:=(UDif0+UGrad0)*10e6;
    Form1.Series6.AddXY(MagField_FME[i], Fm[i]);
    Memo5.Lines.Add(FloatToStr(MagField_FME[i])+'	'+FloatToStr(Fm[i]));
  end;

end;

procedure TForm1.Button34Click(Sender: TObject);
var
     i:integer;
begin
  Chart12.Title.Text.Clear;
  Chart12.Title.Text.Add('ФП и ФМЭ');
  Chart12.Legend.Visible:=True;
  LoadModelData; // загружаем данные для построения сигналов
  Form1.LineSeries2.Clear;
  Form1.Series6.Clear;
  Memo5.Lines.Clear;
  for i:=1 to NPoint_hm do  // вычисляется ФП и ФМЭ для каждой точки В
  begin
    MagField_FME[i]:=0.2*(i-1)-2;
    FUNnew(MagField_FME[i],StrToFloat(form1.Edit13.Text),
    StrToFloat(form1.Edit14.Text),StrToFloat(form1.Edit12.Text));
    Fpe[i]:=(UPh+UGrad+UDif);
    Fm[i]:=(UDif0+UGrad0);
  end;
  NormModel;
  Memo5.Lines.Add('B	Uфп	Uфмэ');
  for i:=1 to NPoint_hm do
  begin
    Form1.LineSeries2.AddXY(MagField_FME[i], Fpe[i]);
    Form1.Series6.AddXY(MagField_FME[i], Fm[i]);
    Memo5.Lines.Add(FloatToStr(MagField_FME[i])+'	'+FloatToStr(Fpe[i])+'	'+
    FloatToStr(Fm[i]));
  end;
end;

procedure TForm1.NormModel;
var
  max_fpe, max_fm:Extended;
  i:Integer;
begin
  max_fpe:=0;
  max_fm:=0;
  for i:=1 to NPoint_hm do
  begin
    if Fpe[i]>max_fpe then
       max_fpe:=Fpe[i];
    if Fm[i]>max_fm then
       max_fm:=Fm[i];
  end;
  if max_fpe>max_fm then
      max_fm:=max_fpe;

  for i:=1 to NPoint_hm do
  begin
    Fpe[i]:=Fpe[i]/max_fm;
    Fm[i]:=Fm[i]/max_fm;
  end;

end;
 

procedure TForm1.Button35Click(Sender: TObject);
var
     i:integer;
     Xmin, Xmax, s1, s2, B:Extended;
     taun:vector;
begin
  Chart12.Title.Text.Clear;
  Chart12.Title.Text.Add('ФП/ФМЭ');
  LoadModelData; // загружаем данные для построения сигналов
  Form1.LineSeries2.Clear;
  Form1.Series6.Clear;
  Chart12.Legend.Visible:=False;
  Xmin:=StrToFloat(form1.Edit17.Text);
  Xmax:=StrToFloat(form1.Edit18.Text);
  Memo5.Lines.Clear;
  case RadioGroup1.ItemIndex of
  0:
  begin
    Memo5.Lines.Add('Mp	Uфп/Uфмэ');
    for i:=0 to 100 do  // вычисляется ФП и ФМЭ для каждой точки В
    begin
     muP:=Xmin+(Xmax-Xmin)*i/100;
     FUNnew(0.4,StrToFloat(form1.Edit13.Text),
     StrToFloat(form1.Edit14.Text),
     StrToFloat(form1.Edit12.Text));
     Fpe[i]:=(UPh+UGrad+UDif)*10e6;
     Fm[i]:=(UDif0+UGrad0)*10e6;
     Form1.LineSeries2.AddXY(muP, Fpe[i]/Fm[i]);
     Memo5.Lines.Add(FloatToStr(muP)+'	'+FloatToStr(Fpe[i]/Fm[i]));
    end;
  end;
  1:
  begin
    Memo5.Lines.Add('Mn	Uфп/Uфмэ');
    for i:=0 to 100 do  // вычисляется ФП и ФМЭ для каждой точки В
    begin
     muE1:=Xmin+(Xmax-Xmin)*i/100;
     FUNnew(0.4,StrToFloat(form1.Edit13.Text),
     StrToFloat(form1.Edit14.Text),
     StrToFloat(form1.Edit12.Text));
     Fpe[i]:=(UPh+UGrad+UDif)*10e6;
     Fm[i]:=(UDif0+UGrad0)*10e6;
     Form1.LineSeries2.AddXY(muE1, Fpe[i]/Fm[i]);
     Memo5.Lines.Add(FloatToStr(muE1)+'	'+FloatToStr(Fpe[i]/Fm[i]));
    end;
  end;
  2:
  begin
    Memo5.Lines.Add('Tn	Uфп/Uфмэ');
    for i:=0 to 100 do  // вычисляется ФП и ФМЭ для каждой точки В
    begin
     taun[i]:=Xmin+(Xmax-Xmin)*i/100;
     FUNnew(0.4,StrToFloat(form1.Edit13.Text),
     StrToFloat(form1.Edit14.Text),taun[i]);
     Fpe[i]:=(UPh+UGrad+UDif)*10e6;
     Fm[i]:=(UDif0+UGrad0)*10e6;
     Form1.LineSeries2.AddXY(taun[i]*1e9, Fpe[i]/Fm[i]);
     Memo5.Lines.Add(FloatToStr(taun[i])+'	'+FloatToStr(Fpe[i]/Fm[i]));
    end;
  end;
  3:
  begin
    Memo5.Lines.Add('K	Uфп/Uфмэ');
    for i:=0 to 100 do  // вычисляется ФП и ФМЭ для каждой точки В
    begin
     K_trap:=Xmin+(Xmax-Xmin)*i/100;
     FUNnew(0.4,StrToFloat(form1.Edit13.Text),
     StrToFloat(form1.Edit14.Text),
     StrToFloat(form1.Edit12.Text));
     Fpe[i]:=(UPh+UGrad+UDif)*10e6;
     Fm[i]:=(UDif0+UGrad0)*10e6;
     Form1.LineSeries2.AddXY(K_trap, Fpe[i]/Fm[i]);
     Memo5.Lines.Add(FloatToStr(K_trap)+'	'+FloatToStr(Fpe[i]/Fm[i]));
    end;
  end;
  4:
  begin
    Memo5.Lines.Add('S1	Uфп/Uфмэ');
    for i:=0 to 100 do  // вычисляется ФП и ФМЭ для каждой точки В
    begin
     s1:=Xmin+(Xmax-Xmin)*i/100;
     FUNnew(0.4,s1,
     StrToFloat(form1.Edit14.Text),
     StrToFloat(form1.Edit12.Text));
     Fpe[i]:=(UPh+UGrad+UDif)*10e6;
     Fm[i]:=(UDif0+UGrad0)*10e6;
     Form1.LineSeries2.AddXY(s1, Fpe[i]/Fm[i]);
     Memo5.Lines.Add(FloatToStr(s1)+'	'+FloatToStr(Fpe[i]/Fm[i]));
    end;
  end;
  5:
  begin
    Memo5.Lines.Add('S2	Uфп/Uфмэ');
    for i:=0 to 100 do  // вычисляется ФП и ФМЭ для каждой точки В
    begin
     s2:=Xmin+(Xmax-Xmin)*i/100;
     FUNnew(0.4,StrToFloat(form1.Edit13.Text),
     s2,
     StrToFloat(form1.Edit12.Text));
     Fpe[i]:=(UPh+UGrad+UDif)*10e6;
     Fm[i]:=(UDif0+UGrad0)*10e6;
     Form1.LineSeries2.AddXY(s2, Fpe[i]/Fm[i]);
     Memo5.Lines.Add(FloatToStr(s2)+'	'+FloatToStr(Fpe[i]/Fm[i]));
    end;
  end;
  6:
  begin
    Memo5.Lines.Add('Ex	Uфп/Uфмэ');
    for i:=0 to 100 do  // вычисляется ФП и ФМЭ для каждой точки В
    begin
     Ex:=Xmin+(Xmax-Xmin)*i/100;
     FUNnew(0.4,StrToFloat(form1.Edit13.Text),
     StrToFloat(form1.Edit14.Text),
     StrToFloat(form1.Edit12.Text));
     Fpe[i]:=(UPh+UGrad+UDif)*10e6;
     Fm[i]:=(UDif0+UGrad0)*10e6;
     Form1.LineSeries2.AddXY(Ex, Fpe[i]/Fm[i]);
     Memo5.Lines.Add(FloatToStr(Ex)+'	'+FloatToStr(Fpe[i]/Fm[i]));
    end;
  end;
  7:
  begin
    Memo5.Lines.Add('B	Uфп/Uфмэ');
    for i:=0 to 100 do  // вычисляется ФП и ФМЭ для каждой точки В
    begin
     B:=Xmin+(Xmax-Xmin)*i/100;
     FUNnew(B,StrToFloat(form1.Edit13.Text),
     StrToFloat(form1.Edit14.Text),
     StrToFloat(form1.Edit12.Text));
     Fpe[i]:=(UPh+UGrad+UDif)*10e6;
     Fm[i]:=(UDif0+UGrad0)*10e6;
     Form1.LineSeries2.AddXY(B, (Fpe[i]+300)/(Fm[i]+300));
     Memo5.Lines.Add(FloatToStr(B)+'	'+
     FloatToStr((Fpe[i]+300)/(Fm[i]+300)));
    end;
    
  end;
  end;

end;
procedure TForm1.btnFeatClick(Sender: TObject);
begin
PageControl1.TabIndex:=2;
Button12.Click;
PageControl3.TabIndex:=1;
end;

end.
