unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Chart1: TChart;
    Series1: TBarSeries;
    Chart2: TChart;
    Series2: TBarSeries;
    Chart3: TChart;
    Series3: TBarSeries;
    Chart4: TChart;
    Series7: TBarSeries;
    Edit1: TEdit;
    Button1: TButton;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Chart5: TChart;
    Series4: TBarSeries;
    Chart6: TChart;
    Series5: TBarSeries;
    Chart7: TChart;
    Series6: TBarSeries;
    Label28: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    ProgressBar1: TProgressBar;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit4: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit5;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  Form5.Left:=Form4.Left;
  Form5.Top:=Form4.Top;
  Form4.Close;
  form5.Show;
end;

end.
