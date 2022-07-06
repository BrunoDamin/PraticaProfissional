unit uFrmConsultaFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmConsultaPai, Vcl.ComCtrls,
  Vcl.StdCtrls,
  uCidades, uFornecedores, uCtrlFornecedores, uFrmCadastroFornecedores;

type
  TFrmConsultaFornecedores = class(TFrmConsultaPai)
  private
    { Private declarations }
    umCadastroFornecedores : TFrmCadastroFornecedores;
    umFornecedor : Fornecedores;
    umaCidade : Cidades;
    umaCtrlFornecedores : CtrlFornecedores;
  public
    { Public declarations }
    procedure ConhecaObj(pObj : TObject; pCtrl : TObject);  override;
    procedure Incluir;                   override;
    procedure Alterar;                   override;
    procedure Excluir;                   override;
    procedure Sair;                      override;
    procedure Pesquisar;                 override;
    procedure setCadastro(pObj : TObject); override;
    procedure carregarLV;                 override;
  end;

var
  FrmConsultaFornecedores: TFrmConsultaFornecedores;

implementation

{$R *.dfm}

{ TFrmConsultaFornecedores }

procedure TFrmConsultaFornecedores.Alterar;
begin
  inherited;
  umCadastroFornecedores.ConhecaObj(umaCidade, umaCtrlFornecedores);
  umCadastroFornecedores.LimparEdit;
  umCadastroFornecedores.CarregarEdit;
  umCadastroFornecedores.ShowModal;
end;

procedure TFrmConsultaFornecedores.carregarLV;
begin
  inherited;

end;

procedure TFrmConsultaFornecedores.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umFornecedor := Fornecedores(pObj);
  umaCtrlFornecedores := CtrlFornecedores(pCtrl);
end;

procedure TFrmConsultaFornecedores.Excluir;
var aux : string;
begin
  inherited;
    aux := umCadastroFornecedores.btn_Salvar.caption;
    umCadastroFornecedores.btn_Salvar.caption := 'Excluir';
    umCadastroFornecedores.ConhecaObj(umaCidade, umaCtrlFornecedores);
    umCadastroFornecedores.LimparEdit;
    umCadastroFornecedores.CarregarEdit;
    umCadastroFornecedores.BloquearEdit;
    umCadastroFornecedores.ShowModal;
    umCadastroFornecedores.DesbloquearEdit;
    umCadastroFornecedores.btn_Salvar.Caption := aux;
end;

procedure TFrmConsultaFornecedores.Incluir;
begin
    inherited;
    umaCidade.setCodigo(0);
    umCadastroFornecedores.ConhecaObj(umaCidade, umaCtrlFornecedores);
    umCadastroFornecedores.LimparEdit;
    umCadastroFornecedores.ShowModal;
    self.carregarLV;
end;

procedure TFrmConsultaFornecedores.Pesquisar;
begin
  inherited;

end;

procedure TFrmConsultaFornecedores.Sair;
begin
  inherited;

end;

procedure TFrmConsultaFornecedores.setCadastro(pObj: TObject);
begin
  inherited;
  umCadastroFornecedores := TFrmCadastroFornecedores(pObj);
end;

end.
