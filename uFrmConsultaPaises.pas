unit uFrmConsultaPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmConsultaPai, Vcl.ComCtrls,
  Vcl.StdCtrls,
  uPaises, uFrmCadastroPaises, uCtrlPaises;

type
  TFrmConsultaPaises = class(TFrmConsultaPai)
  private
    { Private declarations }
    umCadastroPaises : TFrmCadastroPaises;
    umPais : Paises;
    umaCtrlPaises : CtrlPaises;
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
  FrmConsultaPaises: TFrmConsultaPaises;

implementation

{$R *.dfm}

{ TFrmConsultaPaises }

procedure TFrmConsultaPaises.Alterar;
begin
    inherited;
    umCadastroPaises.ConhecaObj(umPais, umaCtrlPaises);
    umCadastroPaises.LimparEdit;
    umCadastroPaises.CarregarEdit;
    umCadastroPaises.ShowModal;
end;

procedure TFrmConsultaPaises.carregarLV;
begin
  inherited;

end;

procedure TFrmConsultaPaises.ConhecaObj(pObj, pCtrl: TObject);
begin
    inherited;
    umPais := Paises(pObj);
    umaCtrlPaises := CtrlPaises(pCtrl);
end;

procedure TFrmConsultaPaises.Excluir;
var aux : string;
begin
    aux := umCadastroPaises.btn_Salvar.caption;
    umCadastroPaises.btn_Salvar.caption := 'Excluir';
    umCadastroPaises.ConhecaObj(umPais, umaCtrlPaises);
    umCadastroPaises.LimparEdit;
    umCadastroPaises.CarregarEdit;
    umCadastroPaises.BloquearEdit;
    umCadastroPaises.ShowModal;
    umCadastroPaises.DesbloquearEdit;
    umCadastroPaises.btn_Salvar.Caption := aux;
end;

procedure TFrmConsultaPaises.Incluir;
begin
    umPais.setCodigo(0);
    umCadastroPaises.ConhecaObj(umPais, umaCtrlPaises);
    umCadastroPaises.LimparEdit;
    umCadastroPaises.ShowModal;
    self.carregarLV;

end;

procedure TFrmConsultaPaises.Pesquisar;
begin

end;

procedure TFrmConsultaPaises.Sair;
begin
  inherited;

end;

procedure TFrmConsultaPaises.setCadastro(pObj: TObject);
begin
    inherited;
    umCadastroPaises := TFrmCadastroPaises(pObj);
end;

end.
