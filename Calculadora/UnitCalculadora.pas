unit UnitCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtResultado: TEdit;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btnSoma: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btnSubtrair: TButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btnMultiplicar: TButton;
    btnLimpar: TButton;
    btn0: TButton;
    btnIgual: TButton;
    btnDividir: TButton;
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure NumeroClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    FOperacao : Char;
    FTotal : Double;
    FUltimoNumero : Double;

    procedure Calcular;
    procedure Limpar;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.NumeroClick(Sender: TObject);
begin

if FUltimoNumero = 0 then
  edtResultado.Text := TButton(Sender).Caption
else
  edtResultado.Text := edtResultado.Text + TButton(Sender).Caption;

  FUltimoNumero :=  StrToFloat(edtResultado.Text);

end;

procedure TForm1.btnDividirClick(Sender: TObject);
begin
  FUltimoNumero := StrToFloat(edtResultado.Text);
  Calcular;
  FOperacao := '/';
end;

procedure TForm1.btnIgualClick(Sender: TObject);
begin
  Calcular;
end;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TForm1.btnMultiplicarClick(Sender: TObject);
begin
  FUltimoNumero := StrToFloat(edtResultado.Text);
  Calcular;
  FOperacao := '*';
end;

procedure TForm1.btnSomaClick(Sender: TObject);
begin
 FUltimoNumero := StrToFloat(edtResultado.Text);
 Calcular;
 FOperacao := '+';
end;

procedure TForm1.btnSubtrairClick(Sender: TObject);
begin
  FUltimoNumero := StrToFloat(edtResultado.Text);
  Calcular;
  FOperacao := '-';
end;

procedure TForm1.Calcular;
begin
  case FOperacao of
    '+' : FTotal := FTotal + StrToFloat(edtResultado.Text);
    '-' : FTotal := FTotal - StrToFloat(edtResultado.Text);
    '*' : FTotal := FTotal * StrToFloat(edtResultado.Text);
    '/' : FTotal := FTotal / StrToFloat(edtResultado.Text);
  end;

  edtResultado.Text := FloatToStr(FTotal);
  FUltimoNumero := 0;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Limpar;
end;

procedure TForm1.Limpar;
begin
  FTotal := 0;
  FUltimoNumero := 0;
  edtResultado.Text := '0';
  FOperacao := '+';
end;

end.
