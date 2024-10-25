unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math;

type
  TMainForm = class(TForm)
    Label1: TLabel;
    EditRadius: TEdit;
    ButtonCalculate: TButton;
    LabelResult: TLabel;
    procedure ButtonCalculateClick(Sender: TObject);
  private
    { Private declarations }
    function CalculateSphereVolume(radius: Double): Double;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

{ TMainForm }

function TMainForm.CalculateSphereVolume(radius: Double): Double;
begin
  // Объем шара V = (4/3) * ? * r?
  Result := (4 / 3) * Pi * Exp(3 * Ln(radius));
end;

procedure TMainForm.ButtonCalculateClick(Sender: TObject);
var
  radius, volume: Double;
begin
  // Проверяем введен ли радиус и является ли он положительным
  if TryStrToFloat(EditRadius.Text, radius) and (radius > 0) then
  begin
    volume := CalculateSphereVolume(radius);
    LabelResult.Caption := 'Объем шара: ' + FloatToStr(volume);
  end
  else
  begin
    ShowMessage('Ошибка: радиус не введен или меньше нуля.');
    LabelResult.Caption := ''; // очищаем результат
  end;
end;

end.
