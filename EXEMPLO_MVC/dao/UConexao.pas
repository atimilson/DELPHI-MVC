unit UConexao;

interface

uses
   FireDAC.Stan.Intf, FireDAC.Stan.Option,FireDAC.Stan.Error, FireDAC.UI.Intf,
   FireDAC.Phys.Intf, FireDAC.Stan.Def,System.SysUtils,
   FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
   FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
   FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.FB;
type
   TConexao = Class
      Private
         FConn : TFDConnection;
         FDPhysFBDriverLink1: TFDPhysFBDriverLink;
         procedure configurarConexao;

      public
         constructor Create;
         destructor Destroy;override;
         function GetConn():TFDConnection;
         function CriarQuery(): TFDQuery;
   End;
Const
   PATH_BANCO = 'C:\Users\Urs?o-PC\Desktop\EXEMPLO_MVC\BD_MVC.FDB';
implementation

{ TConexao }

procedure TConexao.configurarConexao;
begin
   FConn.Params.DriverID := 'FB';
   FConn.Params.Database := PATH_BANCO;
   FConn.Params.UserName := 'SYSDBA';
   FConn.Params.Password := 'masterkey';
   FConn.LoginPrompt     := False;
end;

constructor TConexao.Create;
begin
   FConn := TFDConnection.Create(nil);
   FDPhysFBDriverLink1 := TFDPhysFBDriverLink.Create(nil);
   FDPhysFBDriverLink1.VendorLib := 'C:\Users\Urs?o-PC\Desktop\EXEMPLO_MVC\fbclient.dll';
   self.configurarConexao;
end;

function TConexao.CriarQuery: TFDQuery;
var
  VQuery: TFDQuery;
begin
   vQuery := TFDQuery.Create(nil);
   VQuery.Connection := FConn;

   Result := VQuery;
end;

destructor TConexao.Destroy;
begin
   FreeAndNil(FConn);
  inherited;
end;

function TConexao.GetConn: TFDConnection;
begin
   Result := FConn;
end;

end.
