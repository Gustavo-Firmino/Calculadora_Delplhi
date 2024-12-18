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
    Btn_Del: TButton;
    Btn_Virg: TButton;
    procedure Btn_SomaClick(Sender: TObject);
    procedure Btn_SubClick(Sender: TObject);
    procedure Btn_MultiClick(Sender: TObject);
    procedure Btn_DivClick(Sender: TObject);
    procedure Btn_CClick(Sender: TObject);
    procedure Btn_IgualClick(Sender: TObject);
    procedure Btn_0Click(Sender: TObject);
    procedure Btn_DelClick(Sender: TObject);
    procedure Btn_2Click(Sender: TObject);
    procedure Btn_3Click(Sender: TObject);
    procedure Btn_4Click(Sender: TObject);
    procedure Btn_5Click(Sender: TObject);
    procedure Btn_6Click(Sender: TObject);
    procedure Btn_7Click(Sender: TObject);
    procedure Btn_8Click(Sender: TObject);
    procedure Btn_9Click(Sender: TObject);
    procedure Btn_1Click(Sender: TObject);
    procedure Btn_VirgClick(Sender: TObject);
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


procedure TForm1.Btn_CClick(Sender: TObject);
begin
     LblOp.Caption := '';
     LblN1.Text := '';
     LblN2.Text := '';
end;

procedure TForm1.Btn_0Click(Sender: TObject);
begin
     if LblOp.Caption = '' then
        LblN1.Text := LblN1.Text + Btn_0.Caption
     else
         LblN2.Text := LblN2.Text + Btn_0.Caption;
end;

procedure TForm1.Btn_1Click(Sender: TObject);
begin
     if LblOp.Caption = '' then
        LblN1.Text := LblN1.Text + Btn_1.Caption
     else
         LblN2.Text := LblN2.Text + Btn_1.Caption;
end;


procedure TForm1.Btn_2Click(Sender: TObject);
begin
     if LblOp.Caption = '' then
        LblN1.Text := LblN1.Text + Btn_2.Caption
     else
         LblN2.Text := LblN2.Text + Btn_2.Caption;
end;

procedure TForm1.Btn_3Click(Sender: TObject);
begin
     if LblOp.Caption = '' then
        LblN1.Text := LblN1.Text + Btn_3.Caption
     else
         LblN2.Text := LblN2.Text + Btn_3.Caption;
end;



procedure TForm1.Btn_4Click(Sender: TObject);
begin
     if LblOp.Caption = '' then
        LblN1.Text := LblN1.Text + Btn_4.Caption
     else
         LblN2.Text := LblN2.Text + Btn_4.Caption;
end;

procedure TForm1.Btn_5Click(Sender: TObject);
begin
     if LblOp.Caption = '' then
        LblN1.Text := LblN1.Text + Btn_5.Caption
     else
         LblN2.Text := LblN2.Text + Btn_5.Caption;
end;



procedure TForm1.Btn_6Click(Sender: TObject);
begin
     if LblOp.Caption = '' then
        LblN1.Text := LblN1.Text + Btn_6.Caption
     else
         LblN2.Text := LblN2.Text + Btn_6.Caption;
end;


procedure TForm1.Btn_7Click(Sender: TObject);
begin
     if LblOp.Caption = '' then
        LblN1.Text := LblN1.Text + Btn_7.Caption
     else
         LblN2.Text := LblN2.Text + Btn_7.Caption;
end;


procedure TForm1.Btn_8Click(Sender: TObject);
begin
     if LblOp.Caption = '' then
        LblN1.Text := LblN1.Text + Btn_8.Caption
     else
         LblN2.Text := LblN2.Text + Btn_8.Caption;
end;

procedure TForm1.Btn_9Click(Sender: TObject);
begin
     if LblOp.Caption = '' then
        LblN1.Text := LblN1.Text + Btn_9.Caption
     else
         LblN2.Text := LblN2.Text + Btn_9.Caption;
end;


procedure TForm1.Btn_IgualClick(Sender: TObject);
var n1,n2: Double;
begin

     if (LblN1.Text = '') or (LblN2.Text = '') then
     begin
            ShowMessage('Uma ou mais labels est�o vazias.');
     end
     else
     begin
          n1 := StrToFloat(LblN1.Text);
          n2 := StrToFloat(LblN2.Text);

          if LblOp.Caption = '+' then
           begin
                ShowMessage(FloatToStr(n1 + n2));
           end;
          if LblOp.Caption = '-' then
           begin
                ShowMessage(FloatToStr(n1 - n2));
           end;
          if LblOp.Caption = '/' then
           begin
                ShowMessage(FloatToStr(n1 / n2));
           end;
          if LblOp.Caption = 'X' then
           begin
                ShowMessage(FloatToStr(n1 * n2));
           end;
     end;
     LblOp.Caption := '';
     LblN1.Text := '';
     LblN2.Text := '';

     Btn_Soma.Enabled := True;
     Btn_Sub.Enabled := True;
     Btn_Multi.Enabled := True;
     Btn_Div.Enabled := True;
end;

procedure TForm1.Btn_VirgClick(Sender: TObject);
begin
     if LblOp.Caption = '' then
        LblN1.Text := LblN1.Text + Btn_Virg.Caption
     else
         LblN2.Text := LblN2.Text + Btn_Virg.Caption;
end;

procedure TForm1.Btn_DelClick(Sender: TObject);
begin
     if LblOp.Caption = '' then
          LblN1.Text := Copy(LblN1.Text,0,Length(LblN1.Text)- 1)
     else
         LblN2.Text := Copy(LblN2.Text,0,Length(LblN2.Text)- 1)
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
