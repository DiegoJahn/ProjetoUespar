unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TF_Principal = class(TForm)
    MainMenu1: TMainMenu;
    as1: TMenuItem;
    Estado1: TMenuItem;
    Cidade1: TMenuItem;
    Cliente1: TMenuItem;
    procedure Estado1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

implementation

{$R *.dfm}

uses U_Cidade, U_Cliente, U_Estado, U_Modelo;

procedure TF_Principal.Estado1Click(Sender: TObject);
begin
  F_Estado.ShowModal;
end;

end.
