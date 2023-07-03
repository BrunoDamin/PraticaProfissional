unit uFrmCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastroPai, Vcl.StdCtrls,
  uClientes, uCtrlClientes;

type
  TFrmCadastroClientes = class(TFrmCadastroPai)
    lbl_NomeCliente: TLabel;
    lbl_Cep: TLabel;
    lbl_Tipo: TLabel;
    lbl_Documento: TLabel;
    lbl_Rua: TLabel;
    lbl_CodCidade: TLabel;
    lbl_numero: TLabel;
    lbl_Bairro: TLabel;
    lbl_NomeCidade: TLabel;
    edt_NomeCliente: TEdit;
    edt_Rua: TEdit;
    edt_Documento: TEdit;
    edt_Tipo: TEdit;
    edt_Numero: TEdit;
    edt_Bairro: TEdit;
    edt_Cep: TEdit;
    edt_CodCidade: TEdit;
    edt_NomeCidae: TEdit;
    btn_Pesquisar: TButton;
  private
    { Private declarations }
    umCliente : Clientes;
    umaCtrlClientes : CtrlClientes;
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
  FrmCadastroClientes: TFrmCadastroClientes;

implementation

{$R *.dfm}

{ TFrmCadastroClientes }

procedure TFrmCadastroClientes.BloquearEdit;
begin
  inherited;
  self.edt_NomeCliente.Enabled := False;
  self.edt_Tipo.Enabled := False;
  self.edt_Documento.Enabled := False;
  self.edt_Rua.Enabled := False;
  self.edt_Numero.Enabled := False;
  self.edt_Bairro.Enabled := False;
  self.edt_Cep.Enabled := False;
  self.edt_CodCidade.Enabled := False;
  self.edt_NomeCidae.Enabled := False;
  self.edt_DataCadastro.Enabled := False;
  self.edt_UltimaAlteracao.Enabled := False;
end;

procedure TFrmCadastroClientes.CarregarEdit;
begin
  inherited;
  self.edt_Codigo.Text := inttostr(umCliente.getCodigo);
  self.edt_NomeCliente.Text := umCliente.getNome;
  self.edt_Tipo.Text := umCliente.getTipo;
  self.edt_Documento.Text := umCliente.getDocumento;
  self.edt_Rua.Text := umCliente.getRua;
  self.edt_Numero.Text := umCliente.getNumero;
  self.edt_Bairro.Text := umCliente.getBairro;
  self.edt_Cep.Text := umCliente.getCep;
  self.edt_CodCidade.Text := inttostr(umCliente.getCidade.getCodigo);
  self.edt_NomeCidae.Text := umCliente.getCidade.getCidade;
  self.edt_DataCadastro.Text := umCliente.getDataCad;
  self.edt_UltimaAlteracao.Text := umCliente.getUltAlt;
end;

procedure TFrmCadastroClientes.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umCliente := Clientes(pObj);
  umaCtrlClientes := CtrlClientes(pCtrl);
end;

procedure TFrmCadastroClientes.DesbloquearEdit;
begin
  inherited;
  self.edt_NomeCliente.Enabled := True;
  self.edt_Tipo.Enabled := True;
  self.edt_Documento.Enabled := True;
  self.edt_Rua.Enabled := True;
  self.edt_Numero.Enabled := True;
  self.edt_Bairro.Enabled := True;
  self.edt_Cep.Enabled := True;
  self.edt_CodCidade.Enabled := True;
  self.edt_NomeCidae.Enabled := True;
  self.edt_DataCadastro.Enabled := True;
  self.edt_UltimaAlteracao.Enabled := True;
end;

procedure TFrmCadastroClientes.LimparEdit;
begin
  inherited;
  self.edt_Codigo.Text := '0';
  self.edt_NomeCliente.Clear;
  self.edt_Tipo.Clear;
  self.edt_Documento.Clear;
  self.edt_Rua.Clear;
  self.edt_Numero.Clear;
  self.edt_Bairro.Clear;
  self.edt_Cep.Clear;
  self.edt_CodCidade.Text := '0';
  self.edt_NomeCidae.Clear;
  self.edt_DataCadastro.Clear;
  self.edt_UltimaAlteracao.Clear;
end;

procedure TFrmCadastroClientes.Sair;
begin

end;

procedure TFrmCadastroClientes.Salvar;
begin
  inherited;

end;

end.
