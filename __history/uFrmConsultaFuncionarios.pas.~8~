unit uFrmConsultaFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmConsultaPai, Vcl.ComCtrls,
  Vcl.StdCtrls,
  uFuncionarios, uCtrlFuncionarios, uFrmCadastroFuncionarios;

type
  TFrmConsultaFuncionarios = class(TFrmConsultaPai)
  private
    { Private declarations }
    umCadastroFuncionarios : TFrmCadastroFuncionarios;
    umFuncionario : Funcionarios;
    umaCtrlFuncionarios : CtrlFuncionarios;
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
  FrmConsultaFuncionarios: TFrmConsultaFuncionarios;

implementation

{$R *.dfm}

{ TFrmConsultaFuncionarios }

procedure TFrmConsultaFuncionarios.Alterar;
begin
  inherited;
  umCadastroFuncionarios.LimparEdit;
  umCadastroFuncionarios.CarregarEdit;
  umCadastroFuncionarios.ShowModal;
end;

procedure TFrmConsultaFuncionarios.carregarLV;
begin
  inherited;

end;

procedure TFrmConsultaFuncionarios.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umFuncionario := Funcionarios(pObj);
  umaCtrlFuncionarios := CtrlFuncionarios(pCtrl);
end;

procedure TFrmConsultaFuncionarios.Excluir;
var aux : string;
begin
  inherited;
    aux := umCadastroFuncionarios.btn_Salvar.caption;
    umCadastroFuncionarios.btn_Salvar.caption := 'Excluir';
    umCadastroFuncionarios.LimparEdit;
    umCadastroFuncionarios.CarregarEdit;
    umCadastroFuncionarios.BloquearEdit;
    umCadastroFuncionarios.ShowModal;
    umCadastroFuncionarios.DesbloquearEdit;
    umCadastroFuncionarios.btn_Salvar.Caption := aux;
end;

procedure TFrmConsultaFuncionarios.Incluir;
begin
  inherited;
    umCadastroFuncionarios.LimparEdit;
    umCadastroFuncionarios.ShowModal;
    self.carregarLV;
end;

procedure TFrmConsultaFuncionarios.Pesquisar;
begin
  inherited;

end;

procedure TFrmConsultaFuncionarios.Sair;
begin
  inherited;

end;

procedure TFrmConsultaFuncionarios.setCadastro(pObj: TObject);
begin
  inherited;
  umCadastroFuncionarios := TFrmCadastroFuncionarios(pObj);
end;

end.
