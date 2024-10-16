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
    Display: TEdit;
    Btn_Igual: TButton;
    Btn_Soma: TButton;
    Btn_Sub: TButton;
    Btn_Multi: TButton;
    Btn_Div: TButton;
    Pnl_Botoes: TPanel;
    procedure Btn_0Click(Sender: TObject);
    procedure Btn_1Click(Sender: TObject);
    procedure Btn_2Click(Sender: TObject);
    procedure Btn_3Click(Sender: TObject);
    procedure Btn_4Click(Sender: TObject);
    procedure Btn_5Click(Sender: TObject);
    procedure Btn_6Click(Sender: TObject);
    procedure Btn_7Click(Sender: TObject);
    procedure Btn_8Click(Sender: TObject);
    procedure Btn_9Click(Sender: TObject);
    procedure Btn_SomaClick(Sender: TObject);
    procedure Btn_SubClick(Sender: TObject);
    procedure Btn_MultiClick(Sender: TObject);
    procedure Btn_DivClick(Sender: TObject);
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

procedure TForm1.Btn_0Click(Sender: TObject);
begin
     Display.Text := Display.Text + Btn_0.Caption;
end;

procedure TForm1.Btn_1Click(Sender: TObject);
begin
     Display.Text := Display.Text + Btn_1.Caption;
end;

procedure TForm1.Btn_2Click(Sender: TObject);
begin
     Display.Text := Display.Text + Btn_2.Caption;
end;

procedure TForm1.Btn_3Click(Sender: TObject);
begin
     Display.Text := Display.Text + Btn_3.Caption;
end;

procedure TForm1.Btn_4Click(Sender: TObject);
begin
     Display.Text := Display.Text + Btn_4.Caption;
end;

procedure TForm1.Btn_5Click(Sender: TObject);
begin
     Display.Text := Display.Text + Btn_5.Caption;
end;

procedure TForm1.Btn_6Click(Sender: TObject);
begin
     Display.Text := Display.Text + Btn_6.Caption;
end;

procedure TForm1.Btn_7Click(Sender: TObject);
begin
     Display.Text := Display.Text + Btn_7.Caption;
end;

procedure TForm1.Btn_8Click(Sender: TObject);
begin
     Display.Text := Display.Text + Btn_8.Caption;
end;

procedure TForm1.Btn_9Click(Sender: TObject);
begin
     Display.Text := Display.Text + Btn_9.Caption;
end;

//sinais

procedure TForm1.Btn_SomaClick(Sender: TObject);
begin
     Display.Text := Display.Text + Btn_Soma.Caption;
end;

procedure TForm1.Btn_SubClick(Sender: TObject);
begin
     Display.Text := Display.Text + Btn_Sub.Caption;
end;

procedure TForm1.Btn_MultiClick(Sender: TObject);
begin
     Display.Text := Display.Text + Btn_Multi.Caption;
end;

procedure TForm1.Btn_DivClick(Sender: TObject);
begin
     Display.Text := Display.Text + Btn_Div.Caption;
end;

procedure TForm1.Btn_IgualClick(Sender: TObject);
begin
    //funcao para operacoes
end;

end.
