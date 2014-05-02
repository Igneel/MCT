unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, StdCtrls, ExtCtrls, TeeProcs, Chart;

type
  TForm7 = class(TForm)
    Chart2: TChart;
    Chart1: TChart;
    Button1: TButton;
    Series1: TPointSeries;
    Series2: TPointSeries;
    Label1: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit6;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
  Form6.Left:=Form7.Left;
  Form6.Top:=Form7.Top;
  Form7.Close;
  Form6.Show;
end;

procedure TForm7.FormShow(Sender: TObject);
var
  i:integer;
begin
  for i:=1 to 30 do
  TEdit(FindComponent('Edit'+IntToStr(i))).Text:=
  TEdit(Form6.FindComponent('Edit'+IntToStr(i))).Text;
end;

end.
