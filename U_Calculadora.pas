unit U_Calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Btn_0: TButton;
    Btn_1: TButton;
    Btn_2: TButton;
    Btn_3: TButton;
    Btn_4: TButton;
    Btn_5: TButton;
    Btn_6: TButton;
    Btn_7: TButton;
    Btn_8: TButton;
    Btn_9: TButton;
    Btn_Igual: TButton;
    Btn_Soma: TButton;
    Btn_Sub: TButton;
    Btn_Multi: TButton;
    Btn_Div: TButton;
    Pnl_Botoes: TPanel;
    Btn_C: TButton;
    LblOp: TLabel;
    LblN1: TLabeledEdit;
    LblN2: TLabeledEdit;
    procedure Btn_SomaClick(Sender: TObject);
    procedure Btn_SubClick(Sender: TObject);
    procedure Btn_MultiClick(Sender: TObject);
    procedure Btn_DivClick(Sender: TObject);
    procedure Btn_CClick(Sender: TObject);
    procedure Btn_IgualClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses U_Operacoes;

//numeros digitos




//opera�oes

procedure TForm1.Btn_CClick(Sender: TObject);
begin
     LblOp.Caption := '';
     LblN1.Text := '';
     LblN2.Text := '';
end;

procedure TForm1.Btn_IgualClick(Sender: TObject);
var n1,n2: Double;
    I: Integer;
begin

     if (LblN1.Text = '') or (LblN2.Text = '') then
     begin
            ShowMessage('Uma ou mais labels est�o vazias.');
     end
     else
     begin
          n1 := StrToFloat(LblN1.Text);
          n2 := StrToFloat(LblN2.Text);

//          if LblOp.Caption = '+' then
//           begin
//                ShowMessage(FloatToStr(n1 + n2));
//           end;
//          if LblOp.Caption = '-' then
//           begin
//                ShowMessage(FloatToStr(n1 - n2));
//           end;
//          if LblOp.Caption = '/' then
//           begin
//                ShowMessage(FloatToStr(n1 / n2));
//           end;
//          if LblOp.Caption = 'x' then
//           begin
//                ShowMessage(FloatToStr(n1 * n2));
//           end;

             case True of

             end;

     end;


end;

procedure TForm1.Btn_DivClick(Sender: TObject);
begin
     LblOp.Caption := Btn_Div.Caption;
     Btn_Soma.Enabled := True;
     Btn_Sub.Enabled  := True;
     Btn_Multi.Enabled:= True;
     Btn_Div.Enabled := False;
end;

procedure TForm1.Btn_MultiClick(Sender: TObject);
begin
     LblOp.Caption := Btn_Multi.Caption;
     Btn_Soma.Enabled := True;
     Btn_Sub.Enabled  := True;
     Btn_Div.Enabled  := True;
     Btn_Multi.Enabled := False;
end;

procedure TForm1.Btn_SomaClick(Sender: TObject);
begin
     LblOp.Caption := Btn_Soma.Caption;
     Btn_Div.Enabled := True;
     Btn_Sub.Enabled  := True;
     Btn_Multi.Enabled:= True;
     Btn_Soma.Enabled := False;
end;

procedure TForm1.Btn_SubClick(Sender: TObject);
begin
     LblOp.Caption := Btn_Sub.Caption;
     Btn_Soma.Enabled := True;
     Btn_Div.Enabled  := True;
     Btn_Multi.Enabled:= True;
     Btn_Sub.Enabled := False;
end;



end.
