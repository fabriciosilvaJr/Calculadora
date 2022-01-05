unit calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, untCalculo, Vcl.Buttons;

type
  TfrmCalculadora = class(TForm)
    txtN1: TEdit;
    txtN2: TEdit;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnMult: TButton;
    btnDiv: TButton;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;

    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMultClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
end;

var
  frmCalculadora: TfrmCalculadora;

implementation



{$R *.dfm}

procedure TfrmCalculadora.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmCalculadora.btnDivClick(Sender: TObject);
var
  vDiv: TDiv;
begin

     ShowMessage(vDiv.DivValores(StrToFloat(txtN1.Text),StrToFloat(txtN2.Text)));
    //txtResult.Text:= vDiv.DivValores(StrToFloat(txtN1.Text),StrToFloat(txtN2.Text));
end;

procedure TfrmCalculadora.btnMultClick(Sender: TObject);
var
  vMultiplicar: TMultiplicar;
begin

    ShowMessage(vMultiplicar.MultiplicarValores(StrToFloat(txtN1.Text),StrToFloat(txtN2.Text)));
   //txtResult.Text:= vMultiplicar.MultiplicarValores(StrToFloat(txtN1.Text),StrToFloat(txtN2.Text));
end;

procedure TfrmCalculadora.btnSomarClick(Sender: TObject);
var
  vSomar : TSomar;

begin
  //vCalculo.Create;

   if txtN1.Text='' then
      ShowMessage('Informe o primeiro valor. ')
    else
    if txtN2.Text='' then
      ShowMessage('Informe o segundo valor. ')
    else
      ShowMessage( vSomar.SomaValores(StrToFloat(txtN1.Text), StrToFloat(txtN2.Text)));
  //txtResult.text:=  vSomar.SomaValores(StrToFloat(txtN1.Text), StrToFloat(txtN2.Text));
end;

procedure TfrmCalculadora.btnSubtrairClick(Sender: TObject);
var
  vSubtrair: TSubtrair;

begin


    if txtN1.Text='' then
      ShowMessage('Informe o primeiro valor. ')
    else
    if txtN2.Text='' then
      ShowMessage('Informe o segundo valor. ')
     else
       ShowMessage(vSubtrair.SubtrairValores(StrToFloat(txtN1.Text),StrToFloat(txtN2.Text)));
  //txtResult.Text:= vSubtrair.SubtrairValores(StrToFloat(txtN1.Text),StrToFloat(txtN2.Text));

end;

end.
