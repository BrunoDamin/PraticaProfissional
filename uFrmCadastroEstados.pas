unit uFrmCadastroEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastroPai, Vcl.StdCtrls,
  uEstados, uCtrlEstados, uPaises, uCtrlPaises;

type
  TFrmCadastroEstados = class(TFrmCadastroPai)
    lbl_NomeEstado: TLabel;
    lbl_UFEstado: TLabel;
    lbl_CodPais: TLabel;
    lbl_NomePais: TLabel;
    btn_Pesquisar: TButton;
    edt_NomePais: TEdit;
    edt_CodPais: TEdit;
    edt_UFEstado: TEdit;
    edt_NomeEstado: TEdit;
    procedure edt_NomeEstadoExit(Sender: TObject);
  private
    { Private declarations }
    umEstado : Estados;
    umaCtrlEstados : CtrlEstados;
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
  FrmCadastroEstados: TFrmCadastroEstados;

implementation

{$R *.dfm}

{ TFrmCadastroEstados }

procedure TFrmCadastroEstados.BloquearEdit;
begin
  inherited;
  self.edt_NomeEstado.Enabled := False;
  self.edt_UFEstado.Enabled := False;
  self.edt_CodPais.Enabled := False;
  self.edt_NomePais.Enabled := False;
  self.edt_DataCadastro.Enabled := False;
  self.edt_UltimaAlteracao.Enabled := False;
end;

procedure TFrmCadastroEstados.CarregarEdit;
begin
  inherited;
  self.edt_Codigo.Text := inttostr(umEstado.getCodigo);
  self.edt_NomeEstado.Text := umEstado.getEstado;
  self.edt_UFEstado.Text := umEstado.getUf;
  self.edt_CodPais.Text := inttostr(umEstado.getPais.getCodigo);
  self.edt_NomePais.Text := umEstado.getPais.getPais;
  self.edt_DataCadastro.Text := umEstado.getDataCad;
  self.edt_UltimaAlteracao.Text := umEstado.getUltAlt;
end;

procedure TFrmCadastroEstados.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umEstado := Estados(pObj);
  umaCtrlEstados := CtrlEstados(pCtrl);
end;

procedure TFrmCadastroEstados.DesbloquearEdit;
begin
  inherited;
  self.edt_NomeEstado.Enabled := True;
  self.edt_UFEstado.Enabled := True;
  self.edt_CodPais.Enabled := True;
  self.edt_NomePais.Enabled := True;
  self.edt_DataCadastro.Enabled := True;
  self.edt_UltimaAlteracao.Enabled := True;
end;

procedure TFrmCadastroEstados.edt_NomeEstadoExit(Sender: TObject);
begin
  inherited;
  if (self.edt_NomeEstado.text <> '') then
    self.edt_NomeEstado.Color := clWindow;
  //mQuero := strtoint(Self.edt_codigo.text) <> 0;
  if umaCtrlEstados.Pesquisar(self.edt_NomeEstado.Text, umEstado) = 0 then
  begin
    showmessage('Estado :' +self.edt_NomeEstado.text+ ' j� cadastrado! ');
    self.edt_NomeEstado.SetFocus;
  end;
end;

procedure TFrmCadastroEstados.LimparEdit;
begin
  inherited;
  self.edt_Codigo.Text := '0';
  self.edt_NomeEstado.Clear;
  self.edt_UFEstado.Clear;
  self.edt_CodPais.Text := '0';
  self.edt_NomePais.Clear;
  self.edt_DataCadastro.Clear;
  self.edt_UltimaAlteracao.Clear;

end;

procedure TFrmCadastroEstados.Sair;
begin

end;

procedure TFrmCadastroEstados.Salvar;
begin
  if length(self.edt_NomeEstado.Text) = 0 then
    self.edt_NomeEstado.Color := clYellow;
  if length(self.edt_UFEstado.Text) = 0 then
    self.edt_UFEstado.Color := clYellow;


  if ehObrigatorio(self.edt_NomeEstado.text, '*') and (length(self.edt_NomeEstado.Text) = 0 )then
  begin
    showmessage('CAMPO NOME ESTADO � OBRIGAT�RIO!');
    self.edt_NomeEstado.SetFocus;
  end
  else if ehObrigatorio(self.edt_UFEstado.text, '*') and (length(self.edt_UFEstado.Text) = 0) then
  begin
    showmessage('CAMPO UF � OBRIGAT�RIO!');
    self.edt_UFEstado.SetFocus;
  end
  else
  begin
    if self.btn_Salvar.Caption = '&Salvar' then
    begin
        umEstado.setCodigo(strtoint(self.edt_codigo.Text));
        umEstado.setEstado(self.edt_NomeEstado.Text);
        umEstado.setUF(self.edt_UfEstado.Text);
        umEstado.getPais.setCodigo(strtoint(self.edt_CodPais.Text));
        umEstado.getPais.setPais(self.edt_NomePais.Text);
        umEstado.setDataCad(self.edt_DataCadastro.text);
        umEstado.setUltAlt(self.edt_UltimaAlteracao.text);
        umaCtrlEstados.Salvar(umEstado.clone);

    end
    else
    begin
       if umaCtrlEstados.Excluir(umEstado.clone)then
          showmessage('Pais exclu�do com sucesso!')
       else
          showmessage('Problemas na exclus�o!');

    end;



  end;

  inherited;



end;

end.
