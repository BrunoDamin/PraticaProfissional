unit uFrmConsultaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmConsultaPai, Vcl.ComCtrls,
  Vcl.StdCtrls,
  uCidades, uClientes, uFrmCadastroClientes, uCtrlClientes;

type
  TFrmConsultaClientes = class(TFrmConsultaPai)
  private
    { Private declarations }
    umCadastroClientes : TFrmCadastroClientes;
    umCliente : Clientes;
    umaCidade : Cidades;
    umaCtrlClientes : CtrlClientes;
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
  FrmConsultaClientes: TFrmConsultaClientes;

implementation

{$R *.dfm}

{ TFrmConsultaClientes }

procedure TFrmConsultaClientes.Alterar;
begin
  inherited;
  umCadastroClientes.ConhecaObj(umaCidade, umaCtrlClientes);
  umCadastroClientes.LimparEdit;
  umCadastroClientes.CarregarEdit;
  umCadastroClientes.ShowModal;
end;

procedure TFrmConsultaClientes.carregarLV;
begin
  inherited;

end;

procedure TFrmConsultaClientes.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umCliente := Clientes(pObj);
  umaCtrlClientes := CtrlClientes(pCtrl);
end;

procedure TFrmConsultaClientes.Excluir;
var aux : string;
begin
  inherited;
    aux := umCadastroClientes.btn_Salvar.caption;
    umCadastroClientes.btn_Salvar.caption := 'Excluir';
    umCadastroClientes.ConhecaObj(umaCidade, umaCtrlClientes);
    umCadastroClientes.LimparEdit;
    umCadastroClientes.CarregarEdit;
    umCadastroClientes.BloquearEdit;
    umCadastroClientes.ShowModal;
    umCadastroClientes.DesbloquearEdit;
    umCadastroClientes.btn_Salvar.Caption := aux;
end;

procedure TFrmConsultaClientes.Incluir;
begin
  inherited;
    umaCidade.setCodigo(0);
    umCadastroClientes.ConhecaObj(umaCidade, umaCtrlClientes);
    umCadastroClientes.LimparEdit;
    umCadastroClientes.ShowModal;
    self.carregarLV;
end;

procedure TFrmConsultaClientes.Pesquisar;
begin
  inherited;

end;

procedure TFrmConsultaClientes.Sair;
begin
  inherited;

end;

procedure TFrmConsultaClientes.setCadastro(pObj: TObject);
begin
  inherited;
  umCadastroClientes := TFrmCadastroClientes(pObj);
end;

end.
