unit uFrmCadastroMercadorias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastroPai, Vcl.StdCtrls,
  uMercadorias, uCtrlMercadorias;

type
  TFrmCadastroMercadorias = class(TFrmCadastroPai)
    lbl_Mercadoria: TLabel;
    lbl_Tipo: TLabel;
    lbl_Quantidade: TLabel;
    lbl_Valor: TLabel;
    lbl_CodFornecedor: TLabel;
    lbl_NomeFornecedor: TLabel;
    btn_Pesquisar: TButton;
    edt_Mercadoria: TEdit;
    edt_Tipo: TEdit;
    edt_Quantidade: TEdit;
    edt_NomeFornecedor: TEdit;
    edt_CodFornecedor: TEdit;
    edt_Valor: TEdit;
  private
    { Private declarations }
    umaMercadoria : Mercadorias;
    umaCtrlMercadorias : CtrlMercadorias;
  public
    { Public declarations }
    procedure ConhecaObj (pObj : TObject; pCtrl : TObject);  override;
    procedure LimparEdit;                                    override;
    procedure CarregarEdit;                                  override;
    procedure BloquearEdit;                                  override;
    procedure DesbloquearEdit;                               override;
    procedure Salvar;                                        override;
    procedure Sair;
  end;

var
  FrmCadastroMercadorias: TFrmCadastroMercadorias;

implementation

{$R *.dfm}

{ TFrmCadastroMercadorias }

procedure TFrmCadastroMercadorias.BloquearEdit;
begin
  inherited;
  self.edt_Mercadoria.Enabled := False;
  self.edt_tipo.Enabled := False;
  self.edt_Quantidade.Enabled := False;
  self.edt_Valor.Enabled := False;
  self.edt_CodFornecedor.Enabled := False;
  self.edt_NomeFornecedor.Enabled := False;
  self.edt_DataCadastro.Enabled := False;
  self.edt_UltimaAlteracao.Enabled := False;
end;

procedure TFrmCadastroMercadorias.CarregarEdit;
begin
  inherited;
  self.edt_Codigo.Text := inttostr(umaMercadoria.getCodigo);
  self.edt_Mercadoria.Text := umaMercadoria.getMercadoria;
  self.edt_Tipo.Text := umaMercadoria.getTipo;
  self.edt_Quantidade.Text := inttostr(umaMercadoria.getQuantidade);
  self.edt_Valor.Text := floattostr(umaMercadoria.getValor);
  self.edt_CodFornecedor.Text := inttostr(umaMercadoria.getFornecedor.getCodigo);
  self.edt_NomeFornecedor.Text := umaMercadoria.getFornecedor.getNomeFantasia;
  self.edt_DataCadastro.Text := umaMercadoria.getDataCad;
  self.edt_UltimaAlteracao.Text := umaMercadoria.getUltAlt;
end;

procedure TFrmCadastroMercadorias.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umaMercadoria := Mercadorias(pObj);
  umaCtrlMercadorias := CtrlMercadorias(pCtrl);
end;

procedure TFrmCadastroMercadorias.DesbloquearEdit;
begin
  inherited;
  self.edt_Mercadoria.Enabled := True;
  self.edt_tipo.Enabled := True;
  self.edt_Quantidade.Enabled := True;
  self.edt_Valor.Enabled := True;
  self.edt_CodFornecedor.Enabled := True;
  self.edt_NomeFornecedor.Enabled := True;
  self.edt_DataCadastro.Enabled := True;
  self.edt_UltimaAlteracao.Enabled := True;
end;

procedure TFrmCadastroMercadorias.LimparEdit;
begin
  inherited;
  self.edt_Codigo.Text := '0';
  self.edt_Mercadoria.Clear;
  self.edt_tipo.Clear;
  self.edt_Quantidade.Clear;
  self.edt_Valor.Clear;
  self.edt_CodFornecedor.Text := '0';
  self.edt_NomeFornecedor.Clear;
  self.edt_DataCadastro.Clear;
  self.edt_UltimaAlteracao.Clear;
end;

procedure TFrmCadastroMercadorias.Sair;
begin

end;

procedure TFrmCadastroMercadorias.Salvar;
begin
  inherited;

end;

end.
