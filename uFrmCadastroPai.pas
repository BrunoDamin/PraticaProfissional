unit uFrmCadastroPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmCadastroPai = class(TForm)
    edt_Codigo: TEdit;
    edt_DataCadastro: TEdit;
    edt_UltimaAlteracao: TEdit;
    lbl_Codigo: TLabel;
    lbl_DataCadastro: TLabel;
    lbl_UltimaAlteracao: TLabel;
    btn_Salvar: TButton;
    btn_Sair: TButton;
    procedure btn_SairClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConhecaObj (pObj : TObject; pCtrl : TObject);   virtual;
    procedure LimparEdit;                                     virtual;
    procedure CarregarEdit;                                   virtual;
    procedure BloquearEdit;                                   virtual;
    procedure DesbloquearEdit;                                virtual;
    procedure Salvar;                                         virtual;
    procedure Sair;                                           virtual;
    procedure setConsulta (pObj : TObject);                   virtual;
    function ehObrigatorio (pTexto: string; pLetra : char) : boolean;  virtual;
  end;

var
  FrmCadastroPai: TFrmCadastroPai;

implementation

{$R *.dfm}

{ TForm1 }

procedure TFrmCadastroPai.BloquearEdit;
begin

end;

procedure TFrmCadastroPai.btn_SairClick(Sender: TObject);
begin
    Sair;
end;

procedure TFrmCadastroPai.btn_SalvarClick(Sender: TObject);
begin
    Salvar;
end;

procedure TFrmCadastroPai.CarregarEdit;
begin

end;

procedure TFrmCadastroPai.ConhecaObj(pObj, pCtrl: TObject);
begin

end;

procedure TFrmCadastroPai.DesbloquearEdit;
begin

end;

function TFrmCadastroPai.ehObrigatorio(pTexto: string; pLetra : char): boolean;
var achei : boolean;
    k, tam : integer;
begin
  achei := false;
  k:= 1;
  tam := length(pTexto);
  while not achei and (k <= tam) do
  begin
    achei := pLetra = pTexto[k];
    k := k+1;
  end;
  result := achei;

end;

procedure TFrmCadastroPai.LimparEdit;
begin

end;

procedure TFrmCadastroPai.Sair;
begin
    Close;
end;

procedure TFrmCadastroPai.Salvar;
begin
    Sair;
end;

procedure TFrmCadastroPai.setConsulta(pObj: TObject);
begin

end;

end.

