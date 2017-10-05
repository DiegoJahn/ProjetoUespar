unit U_Estado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Modelo, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TF_Estado = class(TF_Modelo)
    Edt_IdEstado: TEdit;
    Label1: TLabel;
    Edt_NomeEstado: TEdit;
    Edt_SiglaEstado: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edt_Pesquisar: TEdit;
    Lb_Pesquisar: TLabel;
    DBG_Consulta: TDBGrid;
    Q_Estado: TFDQuery;
    Q_EstadoID_ESTADO: TIntegerField;
    Q_EstadoNOME_ESTADO: TStringField;
    Q_EstadoSIGLA_ESTADO: TStringField;
    DS_Estado: TDataSource;
    procedure Spb_NovoClick(Sender: TObject);
    procedure Spb_SalvarClick(Sender: TObject);
    procedure Spb_CancelarClick(Sender: TObject);
    procedure Spb_ExcluirClick(Sender: TObject);
    procedure Spb_EditarClick(Sender: TObject);
    procedure Edt_PesquisarChange(Sender: TObject);
    procedure DBG_ConsultaDblClick(Sender: TObject);
  private
    procedure LimpaCampos;
    procedure HabilitaCampos;
    { Private declarations }
  public
    { Public declarations }
    Crud: string;
  end;

var
  F_Estado: TF_Estado;

implementation

{$R *.dfm}

uses U_DM;

procedure TF_Estado.Spb_CancelarClick(Sender: TObject);
begin
  inherited;
  LimpaCampos;
end;

procedure TF_Estado.Spb_EditarClick(Sender: TObject);
Var
  SQL: string;
begin
  inherited;
  HabilitaCampos;
  Crud := 'Alterar';
  Edt_NomeEstado.SetFocus;

end;

procedure TF_Estado.Spb_ExcluirClick(Sender: TObject);
Var
  SQL: string;
begin
  inherited;
  SQL := 'delete from estado where id_estado =' + Edt_IdEstado.Text;
  DM.FDConnection1.ExecSQL(SQL);
  DM.FDConnection1.CommitRetaining;

end;

procedure TF_Estado.LimpaCampos;
begin
  Edt_IdEstado.Text := EmptyStr;
  Edt_NomeEstado.Text := EmptyStr;
  Edt_SiglaEstado.Text := EmptyStr;
  Crud := EmptyStr;
  Edt_IdEstado.Enabled := False;
  Edt_NomeEstado.Enabled := False;
  Edt_SiglaEstado.Enabled := False;
end;

procedure TF_Estado.DBG_ConsultaDblClick(Sender: TObject);
begin
  inherited;
  Edt_IdEstado.Text := Q_EstadoID_ESTADO.AsString;
  Edt_NomeEstado.Text := Q_EstadoNOME_ESTADO.AsString;
  Edt_SiglaEstado.Text := Q_EstadoSIGLA_ESTADO.AsString;
  PageControl1.TabIndex := 0;
  Spb_Excluir.Enabled := True;
  Spb_Editar.Enabled := True;
end;

procedure TF_Estado.Edt_PesquisarChange(Sender: TObject);
begin
  inherited;
  Q_Estado.Close;
  Q_Estado.ParamByName('NomeEstado').AsString := Edt_Pesquisar.Text + '%';
  Q_Estado.Open();
end;

procedure TF_Estado.HabilitaCampos;
begin
  Edt_IdEstado.Enabled := True;
  Edt_NomeEstado.Enabled := True;
  Edt_SiglaEstado.Enabled := True;
end;

procedure TF_Estado.Spb_NovoClick(Sender: TObject);
var
  MAX: integer;
begin
  inherited;
  DM.FDQ_Estado.Close;
  DM.FDQ_Estado.Open();
  MAX := DM.FDQ_EstadoMAX.AsInteger + 1;
  Edt_IdEstado.Text:= IntToStr(MAX);

  PageControl1.TabIndex := 0;
  HabilitaCampos;
  Edt_IdEstado.SetFocus;
  Crud := 'inserir';
end;

procedure TF_Estado.Spb_SalvarClick(Sender: TObject);
var
  SQL: string;
  MAX: integer;
begin
  inherited;
  if Crud = 'inserir' then
  begin
    DM.FDQ_Estado.Close;
    DM.FDQ_Estado.Open();
    MAX := DM.FDQ_EstadoMAX.AsInteger + 1;
    SQL := 'insert into estado values (' + //
      Edt_IdEstado.Text + ',' + //
      QuotedStr(Edt_NomeEstado.Text) + ',' + //
      QuotedStr(Edt_SiglaEstado.Text) + ');';
  end
  else
  begin
    SQL := 'update estado set' + //
      ' Nome_Estado =' + QuotedStr(Edt_NomeEstado.Text) + //
      ', sigla_estado =' + QuotedStr(Edt_SiglaEstado.Text) + //
      'where id_estado =' + Edt_IdEstado.Text;
  end;
  DM.FDConnection1.ExecSQL(SQL);
  DM.FDConnection1.CommitRetaining;
  LimpaCampos;

end;

end.
