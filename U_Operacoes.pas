unit U_Operacoes;

interface

uses Dialogs,   System.SysUtils;


procedure RecebeConverte(Sentenca : String);

implementation

procedure RecebeConverte(Sentenca : String);
var
   TamanhoSentenca, I : Integer;
   Operador : String;
begin
     TamanhoSentenca := Length(Sentenca);
     for I := 0 to TamanhoSentenca do
        begin
             if TamanhoSentenca = 0 then
             begin
                   ShowMessage('Insira uma operação !!');
             end;
             if Pos('+', Sentenca) > 0 then
             begin
                  ShowMessage('Operador "-" encontrado');
             end;
             if Pos('-', Sentenca) > 0 then
             begin
                  ShowMessage('Operador "-" encontrado');
             end;

              if Pos('X', Sentenca) > 0 then
                ShowMessage('Operador "X" encontrado');
              if Pos('/', Sentenca) > 0 then
                ShowMessage('Operador "/" encontrado');

        end;






end;

end.
