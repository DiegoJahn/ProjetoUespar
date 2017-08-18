unit U_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Modelo, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TF_Produtos = class(TF_Modelo)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Produtos: TF_Produtos;

implementation

{$R *.dfm}

end.
