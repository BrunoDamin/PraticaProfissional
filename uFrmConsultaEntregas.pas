unit uFrmConsultaEntregas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmConsultaPai, Vcl.ComCtrls,
  Vcl.StdCtrls,
  uEntregas, uClientes, uMercadorias, uFuncionarios, uCtrlEntregas, uFrmCadastroEntregas;

type
  TFrmConsultaEntregas = class(TFrmConsultaPai)
  private
    { Private declarations }
    umCadastroEntregas : TFrmCadastroEntregas;
    umCliente : Clientes;
    umaMercadoria : Mercadorias;
    umFuncionario : Funcionarios;
    umaEntrega : Entregas;
    umaCtrlEntregas : CtrlEntregas;
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
  FrmConsultaEntregas: TFrmConsultaEntregas;

implementation

{$R *.dfm}

{ TFrmConsultaEntregas }

procedure TFrmConsultaEntregas.Alterar;
begin
  inherited;
  umCadastroEntregas.ConhecaObj(umCliente, umaCtrlEntregas);
  umCadastroEntregas.ConhecaObj(umaMercadoria, umaCtrlEntregas);
  umCadastroEntregas.ConhecaObj(umFuncionario, umaCtrlEntregas);
  umCadastroEntregas.LimparEdit;
  umCadastroEntregas.CarregarEdit;
  umCadastroEntregas.ShowModal;

end;

procedure TFrmConsultaEntregas.carregarLV;
begin
  inherited;

end;

procedure TFrmConsultaEntregas.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umaEntrega := Entregas(pObj);
  umaCtrlEntregas := CtrlEntregas(pCtrl);
end;

procedure TFrmConsultaEntregas.Excluir;
var aux : string;
begin
  inherited;
    aux := umCadastroEntregas.btn_Salvar.caption;
    umCadastroEntregas.btn_Salvar.caption := 'Excluir';
    umCadastroEntregas.ConhecaObj(umCliente, umaCtrlEntregas);
    umCadastroEntregas.ConhecaObj(umaMercadoria, umaCtrlEntregas);
    umCadastroEntregas.ConhecaObj(umFuncionario, umaCtrlEntregas);
    umCadastroEntregas.LimparEdit;
    umCadastroEntregas.CarregarEdit;
    umCadastroEntregas.BloquearEdit;
    umCadastroEntregas.ShowModal;
    umCadastroEntregas.DesbloquearEdit;
    umCadastroEntregas.btn_Salvar.Caption := aux;
end;

procedure TFrmConsultaEntregas.Incluir;
begin
inherited;
    umCliente.setCodigo(0);
    umaMercadoria.setCodigo(0);
    umFuncionario.setCodigo(0);
    umCadastroEntregas.ConhecaObj(umCliente, umaCtrlEntregas);
    umCadastroEntregas.ConhecaObj(umaMercadoria, umaCtrlEntregas);
    umCadastroEntregas.ConhecaObj(umFuncionario, umaCtrlEntregas);
    umCadastroEntregas.LimparEdit;
    umCadastroEntregas.ShowModal;
    self.carregarLV;
end;

procedure TFrmConsultaEntregas.Pesquisar;
begin
  inherited;

end;

procedure TFrmConsultaEntregas.Sair;
begin
  inherited;

end;

procedure TFrmConsultaEntregas.setCadastro(pObj: TObject);
begin
  inherited;
  umCadastroEntregas := TFrmCadastroEntregas(pObj);
end;

end.
