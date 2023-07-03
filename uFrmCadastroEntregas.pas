unit uFrmCadastroEntregas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastroPai, Vcl.StdCtrls;

type
  TFrmCadastroEntregas = class(TFrmCadastroPai)
    lbl_CodCliente: TLabel;
    lbl_CodMercadoria: TLabel;
    lbl_CodFuncionario: TLabel;
    lbl_NomeCliente: TLabel;
    lbl_NomeMercadoria: TLabel;
    lbl_NomeFuncionario: TLabel;
    edt_NomeCliente: TEdit;
    edt_NomeMercadoria: TEdit;
    edt_NomeFuncionario: TEdit;
    edt_CodMercadoria: TEdit;
    edt_CodCliente: TEdit;
    edt_CodFuncionario: TEdit;
    btn_PesquisarCliente: TButton;
    btn_PesquisarMercadoria: TButton;
    btn_PesquisarFuncionario: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroEntregas: TFrmCadastroEntregas;

implementation

{$R *.dfm}

end.
