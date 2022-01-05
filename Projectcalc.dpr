program Projectcalc;

uses
  Vcl.Forms,
  calculadora in 'calculadora.pas' {frmCalculadora},
  UnitCalcule in 'UnitCalcule.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalculadora, frmCalculadora);
  Application.Run;
end.
