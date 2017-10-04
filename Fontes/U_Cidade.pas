unit U_Cidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Modelo, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TF_Cidade = class(TF_Modelo)
    Lb_IDCidade: TLabel;
    Edt_IDCidade: TEdit;
    Lb_NomeCidade: TLabel;
    Edt_NomeCidade: TEdit;
    Label1: TLabel;
    Edt_CEPCidade: TEdit;
    Label2: TLabel;
    Edt_Pesquisar: TEdit;
    DBG_Resultado: TDBGrid;
    DS_Cidade: TDataSource;
    Q_Cidade: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Cidade: TF_Cidade;

implementation

{$R *.dfm}

end.
