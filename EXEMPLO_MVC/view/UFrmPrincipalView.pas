unit UFrmPrincipalView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UConexao, Vcl.StdCtrls, uSistemaControl,
  Vcl.ExtCtrls, Vcl.ComCtrls, uFrmCliente;

type
  TfrmPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    PnlFundo: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  VConexao: TConexao;
begin
   VConexao := TConexao.Create;
   VConexao.GetConn.Connected := true;

   if(VConexao.GetConn.Connected)then
      ShowMessage('Connectou!');
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin

   TSistemaControl.GetInstance.CarregarEmpresa(1);

   StatusBar1.Panels[0].Text := 'Versão : 1.0';
   StatusBar1.Panels[1].Text := 'Empresa: '+FormatFloat('00',TSistemaControl.GetInstance().EmpresaModel.Codigo)+' - '+
   'EMPRESA :'+TSistemaControl.GetInstance().EmpresaModel.RSocial;
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
   TSistemaControl.GetInstance().Destroy;
end;

procedure TfrmPrincipal.Panel5Click(Sender: TObject);
begin
   Application.CreateForm(TfrmCadastroCliente,frmCadastroCliente);
   try
      frmCadastroCliente.Parent       := PnlFundo;
      frmCadastroCliente.Align        := alClient;
      frmCadastroCliente.BorderStyle  := bsNone;
      frmCadastroCliente.Show;
   finally
      //frmCadastroCliente.Release;
   end;
end;

initialization
   ReportMemoryLeaksOnShutdown := True;
end.
