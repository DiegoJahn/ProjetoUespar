unit U_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Modelo, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TF_Cliente = class(TF_Modelo)
    ID_Cliente: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Edt_IDCliente: TEdit;
    Edt_NomeCliente: TEdit;
    Edt_DNCliente: TEdit;
    Edt_CPF: TEdit;
    Edt_RG: TEdit;
    CB_IDCidade: TComboBox;
    Q_Cidade: TFDQuery;
    Label7: TLabel;
    Edt_Pesquisar: TEdit;
    Q_CidadeNOME_CIDADE: TStringField;
    Q_CidadeID_CIDADE: TIntegerField;
    DS: TDataSource;
    Q_Cliente: TFDQuery;
    Q_ClienteIDCLIENTE: TIntegerField;
    Q_ClienteNOMECLIENTE: TStringField;
    Q_ClienteCPF: TStringField;
    Q_ClienteRG: TStringField;
    Q_ClienteTELEFONE: TStringField;
    Q_ClienteDTNASCIMENTO: TDateField;
    Q_ClienteID_CIDADE: TIntegerField;
    DBGrid1: TDBGrid;
    Edt_Telefone: TEdit;
    procedure Spb_NovoClick(Sender: TObject);
    procedure Edt_PesquisarChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Spb_CancelarClick(Sender: TObject);
    procedure Spb_SalvarClick(Sender: TObject);
    procedure Spb_EditarClick(Sender: TObject);
    procedure Spb_ExcluirClick(Sender: TObject);
  private
    procedure LimpaCampos;
    procedure LimpaCampo;
    { Private declarations }
  public
    { Public declarations }
    Crud: string;
  end;

var
  F_Cliente: TF_Cliente;

implementation

{$R *.dfm}

uses U_DM;

procedure TF_Cliente.DBGrid1DblClick(Sender: TObject);
var
  X1, Y1: integer;
  X2, Y2: string;
begin
  inherited;
  Edt_IDCliente.Text := Q_ClienteIDCLIENTE.AsString;
  Edt_NomeCliente.Text := Q_ClienteNOMECLIENTE.AsString;
  Edt_DNCliente.Text := Q_ClienteDTNASCIMENTO.AsString;
  Edt_CPF.Text := Q_ClienteCPF.AsString;
  Edt_RG.Text := Q_ClienteRG.AsString;
  Edt_Telefone.Text := Q_ClienteTELEFONE.AsString;
  CB_IDCidade.Text := Q_ClienteID_CIDADE.AsString;
  PageControl1.TabIndex := 0;

  X1 := 0;
  DM.FDQ_Cidade.Close;
  DM.FDQ_Cidade.Open();
  Y1 := DM.FDQ_CidadeMAX.AsInteger;
  Q_Cidade.Close;
  Q_Cidade.Open();
  Q_Cidade.First;
  while X1 < Y1 do
  begin
    CB_IDCidade.Items.Add(Q_CidadeNOME_CIDADE.AsString);
    Q_Cidade.Next;
    X1 := X1 + 1;
  end;

  X2 := Q_ClienteID_CIDADE.AsString;
  Q_Cidade.First;
  repeat
    Y2 := Q_CidadeID_CIDADE.AsString;
    CB_IDCidade.Text := Q_CidadeNOME_CIDADE.AsString;
    Q_Cidade.Next;
  until X2 = Y2;

  Spb_Excluir.Enabled := True;
  Spb_Editar.Enabled := True;

end;

procedure TF_Cliente.Edt_PesquisarChange(Sender: TObject);
begin
  inherited;
  Q_Cliente.Close;
  Q_Cliente.ParamByName('NomeCliente').AsString := Edt_Pesquisar.Text + '%';
  Q_Cliente.Open();
end;

procedure TF_Cliente.Spb_CancelarClick(Sender: TObject);
begin
  inherited;
  LimpaCampos;

end;

procedure TF_Cliente.Spb_EditarClick(Sender: TObject);
begin
  inherited;
  Crud := 'Alterar';
  Edt_IDCliente.Enabled := True;
  Edt_NomeCliente.Enabled := True;
  Edt_DNCliente.Enabled := True;
  Edt_CPF.Enabled := True;
  Edt_RG.Enabled := True;
  Edt_Telefone.Enabled := True;
  CB_IDCidade.Enabled := True;
end;

procedure TF_Cliente.Spb_ExcluirClick(Sender: TObject);
var
  SQL: string;
begin
  inherited;
  SQL := 'delete from Cliente where idCliente =' + Edt_IDCliente.Text;
  DM.FDConnection1.ExecSQL(SQL);
  DM.FDConnection1.CommitRetaining;
end;

procedure TF_Cliente.LimpaCampos;
begin
  Edt_IDCliente.Text := EmptyStr;
  Edt_NomeCliente.Text := EmptyStr;
  Edt_DNCliente.Text := EmptyStr;
  Edt_CPF.Text := EmptyStr;
  Edt_RG.Text := EmptyStr;
  Edt_Telefone.Text := EmptyStr;
  CB_IDCidade.Text := EmptyStr;
  CB_IDCidade.Items.Clear;
end;

procedure TF_Cliente.LimpaCampo;
begin
  Edt_IDCliente.Text := EmptyStr;
  Edt_NomeCliente.Text := EmptyStr;
  Edt_DNCliente.Text := EmptyStr;
  Edt_CPF.Text := EmptyStr;
  Edt_RG.Text := EmptyStr;
  Edt_Telefone.Text := EmptyStr;
  CB_IDCidade.Text := EmptyStr;
end;

procedure TF_Cliente.Spb_NovoClick(Sender: TObject);
var
  X, Y, X1, Y1, Max: integer;
begin
  inherited;
  X1 := 0;
  DM.FDQ_Cidade.Close;
  DM.FDQ_Cidade.Open();
  Y1 := DM.FDQ_CidadeMAX.AsInteger;
  Q_Cidade.Close;
  Q_Cidade.Open();
  Q_Cidade.First;
  CB_IDCidade.Text := Q_CidadeNOME_CIDADE.AsString;
  while X1 < Y1 do
  begin
    CB_IDCidade.Items.Add(Q_CidadeNOME_CIDADE.AsString);
    Q_Cidade.Next;
    X1 := X1 + 1;
  end;

  Crud := 'inserir';
  Edt_IDCliente.Enabled := True;
  Edt_NomeCliente.Enabled := True;
  Edt_DNCliente.Enabled := True;
  Edt_CPF.Enabled := True;
  Edt_RG.Enabled := True;
  Edt_Telefone.Enabled := True;
  CB_IDCidade.Enabled := True;

  PageControl1.TabIndex := 0;
  Edt_IDCliente.SetFocus;

  DM.FDQ_Cliente.Close;
  DM.FDQ_Cliente.Open();
  Max := DM.FDQ_ClienteMAX.AsInteger + 1;
  Edt_IDCliente.Text := IntToStr(Max);
end;

procedure TF_Cliente.Spb_SalvarClick(Sender: TObject);
var
  SQL: string;
  Max, Num: integer;
  Copia, X1, Y1: string;
  convert: real;
begin
  inherited;
  if Crud = 'inserir' then
  begin
    Y1 := CB_IDCidade.Text;
    if X1 <> Y1 then
    begin
      Q_Cidade.Close;
      Q_Cidade.Open();
      Q_Cidade.First;
      repeat
        X1 := Q_CidadeNOME_CIDADE.AsString;
        Num := Q_CidadeID_CIDADE.AsInteger;
        Q_Cidade.Next;
      until X1 = Y1;
    end;
    SQL := 'insert into Cliente values (' + //
      Edt_IDCliente.Text + //
      ',' + QuotedStr(Edt_NomeCliente.Text) + //
      ',' + QuotedStr(Edt_CPF.Text) + //
      ',' + QuotedStr(Edt_RG.Text) + //
      ',' + QuotedStr(Edt_Telefone.Text) + //
      ',' + QuotedStr(Edt_DNCliente.Text) + //
      ',' + IntToStr(Num) + ');';
  end
  else
  begin
    Y1 := CB_IDCidade.Text;
    if X1 <> Y1 then
    begin
      Q_Cidade.Close;
      Q_Cidade.Open();
      Q_Cidade.First;
      repeat
        X1 := Q_CidadeNOME_CIDADE.AsString;
        Num := Q_CidadeID_CIDADE.AsInteger;
        Q_Cidade.Next;
      until X1 = Y1;
    end;

    SQL := 'update Cliente set' + //
      ' NomeCliente =' + QuotedStr(Edt_NomeCliente.Text) + //
      ', CPF =' + QuotedStr(Edt_CPF.Text) + //
      ', RG =' + QuotedStr(Edt_RG.Text) + //
      ', Telefone =' + QuotedStr(Edt_Telefone.Text) + //
      ', DTNascimento =' + QuotedStr(Edt_DNCliente.Text) + //
      ', ID_Cidade =' + IntToStr(Num) + //
      'where IDCliente =' + Edt_IDCliente.Text;
  end;

  DM.FDConnection1.ExecSQL(SQL);
  DM.FDConnection1.CommitRetaining;
  LimpaCampos;

end;

end.
