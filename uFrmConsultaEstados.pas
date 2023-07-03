unit uFrmConsultaEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmConsultaPai, Vcl.ComCtrls,
  Vcl.StdCtrls,
  uEstados, uPaises, uFrmCadastroEstados, uCtrlEstados;

type
  TFrmConsultaEstados = class(TFrmConsultaPai)
  private
    { Private declarations }
    umCadastroEstados : TFrmCadastroEstados;
    umEstado : Estados;
    umaCtrlEstados : CtrlEstados;
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
  FrmConsultaEstados: TFrmConsultaEstados;

implementation

{$R *.dfm}

{ TFrmConsultaEstados }

procedure TFrmConsultaEstados.Alterar;
begin
    inherited;
    umCadastroEstados.ConhecaObj(umEstado, umaCtrlEstados);
    umCadastroEstados.LimparEdit;
    umCadastroEstados.CarregarEdit;
    umCadastroEstados.ShowModal;
end;

procedure TFrmConsultaEstados.carregarLV;
begin
  inherited;

end;

procedure TFrmConsultaEstados.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umEstado := Estados(pObj);
  umaCtrlEstados := CtrlEstados(pCtrl);
end;

procedure TFrmConsultaEstados.Excluir;
var aux : string;
begin
  inherited;
    aux := umCadastroEstados.btn_Salvar.caption;
    umCadastroEstados.btn_Salvar.caption := 'Excluir';
    umCadastroEstados.ConhecaObj(umEstado, umaCtrlEstados);
    umCadastroEstados.LimparEdit;
    umCadastroEstados.CarregarEdit;
    umCadastroEstados.BloquearEdit;
    umCadastroEstados.ShowModal;
    umCadastroEstados.DesbloquearEdit;
    umCadastroEstados.btn_Salvar.Caption := aux;
end;

procedure TFrmConsultaEstados.Incluir;
begin
    inherited;
    umEstado.setCodigo(0);
    umCadastroEstados.ConhecaObj(umEstado, umaCtrlEstados);
    umCadastroEstados.LimparEdit;
    umCadastroEstados.ShowModal;
    self.carregarLV;

end;

procedure TFrmConsultaEstados.Pesquisar;
begin
  inherited;

end;

procedure TFrmConsultaEstados.Sair;
begin
  inherited;

end;

procedure TFrmConsultaEstados.setCadastro(pObj: TObject);
begin
    inherited;
    umCadastroEstados := TFrmCadastroEstados(pObj);
end;

end.
