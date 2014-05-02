unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart;

type
  TForm6 = class(TForm)
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Chart2: TChart;
    Series2: TBarSeries;
    Edit2: TEdit;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Chart1: TChart;
    Series1: TBarSeries;
    Edit1: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit7;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  Form7.Left:=Form6.Left;
  Form7.Top:=Form6.Top;
  Form6.Close;
  form7.Show;
end;

end.
