unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls;

type
  TForm3 = class(TForm)
    Chart1: TChart;
    Series1: TPointSeries;
    Chart2: TChart;
    Series2: TPointSeries;
    Chart3: TChart;
    Series3: TPointSeries;
    Chart4: TChart;
    Series4: TPointSeries;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit9: TEdit;
    Edit8: TEdit;
    Edit7: TEdit;
    Edit6: TEdit;
    Edit5: TEdit;
    Edit4: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit16: TEdit;
    Edit15: TEdit;
    Edit14: TEdit;
    Edit13: TEdit;
    Edit12: TEdit;
    Edit11: TEdit;
    Edit10: TEdit;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  Form2.Left:=Form3.Left;
  Form2.Top:=Form3.Top;
  Form3.Close;
  Form2.Show;
end;

procedure TForm3.FormShow(Sender: TObject);
var
  i:Integer;
begin
  for i:=1 to 30 do
  TEdit(FindComponent('Edit'+IntToStr(i))).Text:=
  TEdit(Form2.FindComponent('Edit'+IntToStr(i))).Text;
end;

end.
