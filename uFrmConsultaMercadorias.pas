unit uFrmConsultaMercadorias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmConsultaPai, Vcl.ComCtrls,
  Vcl.StdCtrls,
  uMercadorias, uFornecedores, uCtrlMercadorias, uFrmCadastroMercadorias;

type
  TFrmConsultaMercadorias = class(TFrmConsultaPai)
  private
    { Private declarations }
    umCadastroMercadorias : TFrmCadastroMercadorias;
    umaMercadoria : Mercadorias;
    umFornecedor : Fornecedores;
    umaCtrlMercadorias : CtrlMercadorias;
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
  FrmConsultaMercadorias: TFrmConsultaMercadorias;

implementation

{$R *.dfm}

{ TFrmConsultaMercadorias }

procedure TFrmConsultaMercadorias.Alterar;
begin
  inherited;
  umCadastroMercadorias.ConhecaObj(umFornecedor, umaCtrlMercadorias);
  umCadastroMercadorias.LimparEdit;
  umCadastroMercadorias.CarregarEdit;
  umCadastroMercadorias.ShowModal;
end;

procedure TFrmConsultaMercadorias.carregarLV;
begin
  inherited;

end;

procedure TFrmConsultaMercadorias.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umaMercadoria := Mercadorias(pObj);
  umaCtrlMercadorias := CtrlMercadorias(pCtrl);
end;

procedure TFrmConsultaMercadorias.Excluir;
var aux : string;
begin
  inherited;
    aux := umCadastroMercadorias.btn_Salvar.caption;
    umCadastroMercadorias.btn_Salvar.caption := 'Excluir';
    umCadastroMercadorias.ConhecaObj(umFornecedor, umaCtrlMercadorias);
    umCadastroMercadorias.LimparEdit;
    umCadastroMercadorias.CarregarEdit;
    umCadastroMercadorias.BloquearEdit;
    umCadastroMercadorias.ShowModal;
    umCadastroMercadorias.DesbloquearEdit;
    umCadastroMercadorias.btn_Salvar.Caption := aux;
end;

procedure TFrmConsultaMercadorias.Incluir;
begin
   inherited;
    umFornecedor.setCodigo(0);
    umCadastroMercadorias.ConhecaObj(umFornecedor, umaCtrlMercadorias);
    umCadastroMercadorias.LimparEdit;
    umCadastroMercadorias.ShowModal;
    self.carregarLV;
end;

procedure TFrmConsultaMercadorias.Pesquisar;
begin
  inherited;

end;

procedure TFrmConsultaMercadorias.Sair;
begin
  inherited;

end;

procedure TFrmConsultaMercadorias.setCadastro(pObj: TObject);
begin
  inherited;
  umCadastroMercadorias := TFrmCadastroMercadorias(pObj);
end;

end.
