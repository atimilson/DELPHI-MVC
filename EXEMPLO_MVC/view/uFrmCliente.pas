unit uFrmCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmCadastroCliente = class(TForm)
    editNome: TEdit;
    editCodigo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    mmTableCliente: TFDMemTable;
    DBGrid1: TDBGrid;
    dsCliente: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

end.
