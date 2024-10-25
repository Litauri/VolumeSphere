unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMainForm = class(TForm)
    EditRadius: TEdit;
    ButtonCalculate: TButton;
    LabelResult: TLabel;
    procedure ButtonCalculateClick(Sender: TObject);
  private
    function CalculateSphereVolume(radius: Double): Double;
  public
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

function TMainForm.CalculateSphereVolume(radius: Double): Double;
begin
  if radius < 0 then
    raise Exception.Create('Радиус не может быть отрицательным');


  Result := (4/3) * Exp(Ln(radius) * 3); 
end;

procedure TMainForm.ButtonCalculateClick(Sender: TObject);
var
  radius: Double;
begin
  try
    radius := StrToFloat(EditRadius.Text);
    LabelResult.Caption := 'Объем шара: ' + FloatToStr(CalculateSphereVolume(radius));
  except
    on E: Exception do
    begin
      LabelResult.Caption := 'Ошибка: ' + E.Message;
      EditRadius.Clear;
    end;
  end;
end;

end.
