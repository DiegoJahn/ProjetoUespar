unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TF_Principal = class(TForm)
    MainMenu1: TMainMenu;
    as1: TMenuItem;
    Estado1: TMenuItem;
    Cidade1: TMenuItem;
    Cliente1: TMenuItem;
    Venda1: TMenuItem;
    EntradadeProdutos1: TMenuItem;
    Relatorios1: TMenuItem;
    Produtos1: TMenuItem;
    Clientes1: TMenuItem;
    Vendas1: TMenuItem;
    Estoque1: TMenuItem;
    Produtos2: TMenuItem;
    Image1: TImage;
    StatusBar1: TStatusBar;
    procedure Estado1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

implementation

{$R *.dfm}

uses U_Cidade, U_Cliente, U_Estado, U_Modelo, U_Produtos;

procedure TF_Principal.Cidade1Click(Sender: TObject);
begin
       F_Cidade.ShowModal;
end;

procedure TF_Principal.Cliente1Click(Sender: TObject);
begin
F_Cliente.ShowModal;
end;

procedure TF_Principal.Estado1Click(Sender: TObject);
begin
  F_Estado.ShowModal;
end;

procedure TF_Principal.Produtos2Click(Sender: TObject);
begin
F_Produtos.ShowModal;
end;

end.
