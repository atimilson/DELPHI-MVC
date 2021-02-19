unit uClienteModel;

interface

uses uEnumerados;
type
   TClienteModel = Class
  private
    FAcao: TAcao;
    FCodigo: Integer;
    FNome: String;
    procedure SetAcao(const Value: TAcao);
    procedure SetCodigo(const Value: Integer);
    procedure SetNome(const Value: String);

   public
      property Codigo:Integer read FCodigo write SetCodigo;
      property Nome : String read FNome write SetNome;
      property Acao : TAcao read FAcao write SetAcao;
   End;
implementation

{ TClienteModel }

procedure TClienteModel.SetAcao(const Value: TAcao);
begin
  FAcao := Value;
end;

procedure TClienteModel.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TClienteModel.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
