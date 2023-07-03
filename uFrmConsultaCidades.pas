unit uFrmConsultaCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmConsultaPai, Vcl.ComCtrls,
  Vcl.StdCtrls,
  uCidades, uEstados, uCtrlCidades, uFrmCadastroCidades;

type
  TFrmConsultaCidades = class(TFrmConsultaPai)
  private
    { Private declarations }
    umCadastroCidades : TFrmCadastroCidades;
    umEstado : Estados;
    umaCidade : Cidades;
    umaCtrlCidades : CtrlCidades;
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
  FrmConsultaCidades: TFrmConsultaCidades;

implementation

{$R *.dfm}

{ TFrmConsultaCidades }

procedure TFrmConsultaCidades.Alterar;
begin
    inherited;
    umCadastroCidades.ConhecaObj(umEstado, umaCtrlCidades);
    umCadastroCidades.LimparEdit;
    umCadastroCidades.CarregarEdit;
    umCadastroCidades.ShowModal;
end;

procedure TFrmConsultaCidades.carregarLV;
begin
  inherited;

end;

procedure TFrmConsultaCidades.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umaCidade := Cidades(pObj);
  umaCtrlCidades := CtrlCidades(pCtrl);
end;

procedure TFrmConsultaCidades.Excluir;
var aux : string;
begin
  inherited;
    aux := umCadastroCidades.btn_Salvar.caption;
    umCadastroCidades.btn_Salvar.caption := 'Excluir';
    umCadastroCidades.ConhecaObj(umEstado, umaCtrlCidades);
    umCadastroCidades.LimparEdit;
    umCadastroCidades.CarregarEdit;
    umCadastroCidades.BloquearEdit;
    umCadastroCidades.ShowModal;
    umCadastroCidades.DesbloquearEdit;
    umCadastroCidades.btn_Salvar.Caption := aux;
end;

procedure TFrmConsultaCidades.Incluir;
begin
    inherited;
    umEstado.setCodigo(0);
    umCadastroCidades.ConhecaObj(umEstado, umaCtrlCidades);
    umCadastroCidades.LimparEdit;
    umCadastroCidades.ShowModal;
    self.carregarLV;
end;

procedure TFrmConsultaCidades.Pesquisar;
begin
  inherited;

end;

procedure TFrmConsultaCidades.Sair;
begin
  inherited;

end;

procedure TFrmConsultaCidades.setCadastro(pObj: TObject);
begin
  inherited;
  umCadastroCidades := TFrmCadastroCidades(pObj);
end;

end.
