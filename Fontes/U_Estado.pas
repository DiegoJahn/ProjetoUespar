unit U_Estado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Modelo, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TF_Estado = class(TF_Modelo)
    Edt_IdEstado: TEdit;
    Label1: TLabel;
    Edt_NomeEstado: TEdit;
    Edt_SiglaEstado: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure Spb_NovoClick(Sender: TObject);
    procedure Spb_SalvarClick(Sender: TObject);
  private
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

procedure TF_Estado.Spb_NovoClick(Sender: TObject);
begin
  inherited;
  Edt_IdEstado.Enabled := True;
  Edt_NomeEstado.Enabled := True;
  Edt_SiglaEstado.Enabled := True;
  Edt_IdEstado.SetFocus;
  Crud := 'inserir';
end;

procedure TF_Estado.Spb_SalvarClick(Sender: TObject);
var
  SQL: string;
begin
  inherited;
  if Crud = 'inserir' then
  begin
    SQL := 'insert into estado values (' + //
      Edt_IdEstado.Text + ',' + //
      QuotedStr(Edt_NomeEstado.Text) + ',' + //
      QuotedStr(Edt_SiglaEstado.Text) + ')';
  end;
  DM.FDConnection1.ExecSQL(SQL);

end;

end.
