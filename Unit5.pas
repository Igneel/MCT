unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart;

type
  TForm5 = class(TForm)
    Chart1: TChart;
    Chart2: TChart;
    Chart3: TChart;
    Chart4: TChart;
    Button1: TButton;
    Chart5: TChart;
    Chart6: TChart;
    Chart7: TChart;
    Series1: TPointSeries;
    Series2: TPointSeries;
    Series4: TPointSeries;
    Series5: TPointSeries;
    Series3: TPointSeries;
    Series6: TPointSeries;
    Series7: TPointSeries;
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
    Label28: TLabel;
    Edit1: TEdit;
    Edit8: TEdit;
    Edit15: TEdit;
    Edit22: TEdit;
    Edit2: TEdit;
    Edit9: TEdit;
    Edit16: TEdit;
    Edit23: TEdit;
    Edit3: TEdit;
    Edit10: TEdit;
    Edit17: TEdit;
    Edit24: TEdit;
    Edit4: TEdit;
    Edit11: TEdit;
    Edit18: TEdit;
    Edit25: TEdit;
    Edit5: TEdit;
    Edit12: TEdit;
    Edit19: TEdit;
    Edit26: TEdit;
    Edit6: TEdit;
    Edit13: TEdit;
    Edit20: TEdit;
    Edit27: TEdit;
    Edit7: TEdit;
    Edit14: TEdit;
    Edit21: TEdit;
    Edit28: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  Form4.Left:=Form5.Left;
  Form4.Top:=Form5.Top;
  Form5.Close;
  Form4.Show;
end;

procedure TForm5.FormShow(Sender: TObject);
var
  i:integer;
begin
  for i:=1 to 30 do
  TEdit(FindComponent('Edit'+IntToStr(i))).Text:=
  TEdit(Form4.FindComponent('Edit'+IntToStr(i))).Text;
end;

end.
