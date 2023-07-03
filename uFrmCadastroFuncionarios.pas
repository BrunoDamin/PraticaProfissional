unit uFrmCadastroFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastroPai, Vcl.StdCtrls,
  uFuncionarios, uCtrlFuncionarios;

type
  TFrmCadastroFuncionarios = class(TFrmCadastroPai)
    lbl_NomeFuncionario: TLabel;
    lbl_TipoFuncionario: TLabel;
    lbl_Salario: TLabel;
    edt_SalarioFuncionario: TEdit;
    edt_TipoFuncionario: TEdit;
    edt_NomeFuncionario: TEdit;
  private
    { Private declarations }
    umFuncionario : Funcionarios;
    umaCtrlFuncionarios : CtrlFuncionarios;
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
  FrmCadastroFuncionarios: TFrmCadastroFuncionarios;

implementation

{$R *.dfm}

{ TFrmCadastroFuncionarios }

procedure TFrmCadastroFuncionarios.BloquearEdit;
begin
  inherited;
  self.edt_NomeFuncionario.Enabled := False;
  self.edt_TipoFuncionario.Enabled := False;
  self.edt_SalarioFuncionario.Enabled := False;
  self.edt_DataCadastro.Enabled := False;
  self.edt_UltimaAlteracao.Enabled := False;
end;

procedure TFrmCadastroFuncionarios.CarregarEdit;
begin
  inherited;
  self.edt_Codigo.Text := inttostr(umFuncionario.getCodigo);
  self.edt_NomeFuncionario.Text := umFuncionario.getNome;
  self.edt_TipoFuncionario.Text := umFuncionario.getTipo;
  self.edt_SalarioFuncionario.Text := floattostr(umFuncionario.getSalario);
  self.edt_DataCadastro.Text := umFuncionario.getDataCad;
  self.edt_UltimaAlteracao.Text := umFuncionario.getUltAlt;
end;

procedure TFrmCadastroFuncionarios.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umFuncionario := Funcionarios(pObj);
  umaCtrlFuncionarios := CtrlFuncionarios(pCtrl);
end;

procedure TFrmCadastroFuncionarios.DesbloquearEdit;
begin
  inherited;
  self.edt_NomeFuncionario.Enabled := True;
  self.edt_TipoFuncionario.Enabled := True;
  self.edt_SalarioFuncionario.Enabled := True;
  self.edt_DataCadastro.Enabled := True;
  self.edt_UltimaAlteracao.Enabled := True;
end;

procedure TFrmCadastroFuncionarios.LimparEdit;
begin
  inherited;
  self.edt_Codigo.Text := '0';
  self.edt_NomeFuncionario.Clear;
  self.edt_TipoFuncionario.Clear;
  self.edt_SalarioFuncionario.Text := '0';
  self.edt_DataCadastro.Clear;
  self.edt_UltimaAlteracao.Clear;
end;

procedure TFrmCadastroFuncionarios.Sair;
begin

end;

procedure TFrmCadastroFuncionarios.Salvar;
begin
  inherited;

end;

end.
