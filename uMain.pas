unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  uInterfaces,
  uPaises, uEstados, uCidades, uClientes, uFornecedores, uMercadorias, uFuncionarios, uEntregas, uLancamentos
  uCtrlPaises, uCtrlEstados, uCtrlCidades, uCtrlClientes, uCtrlFornecedores, uCtrlMercadorias, uCtrlFuncionarios, uCtrlEntregas, uLancamentos;

type
  TFrmMain = class(TForm)
    MenuPrincipal: TMainMenu;
    Consultas: TMenuItem;
    Paises: TMenuItem;
    Estados: TMenuItem;
    Cidades: TMenuItem;
    Clientes: TMenuItem;
    Fornecedores: TMenuItem;
    Mercadorias: TMenuItem;
    Funcionarios: TMenuItem;
    Entregas: TMenuItem;
    ConsultarEntregas: TMenuItem;
    NovaEntrega: TMenuItem;
    Devolucoes: TMenuItem;
    Lancamentos: TMenuItem;
    Opes1: TMenuItem;
    ConsultarLancamentos: TMenuItem;
    NovoLancamento: TMenuItem;
    Sair: TMenuItem;

    procedure PaisesClick(Sender: TObject);
    procedure EstadosClick(Sender: TObject);
    procedure CidadesClick(Sender: TObject);
    procedure ClientesClick(Sender: TObject);
    procedure FornecedoresClick(Sender: TObject);
    procedure MercadoriasClick(Sender: TObject);
    procedure FuncionariosClick(Sender: TObject);
    procedure ConsultarEntregasClick(Sender: TObject);
    procedure NovaEntregaClick(Sender: TObject);
    procedure ConsultarLancamentosClick(Sender: TObject);
    procedure NovoLancamentoClick(Sender: TObject);
    procedure FormClose(Sender : TObject; var Action: TCloseAction);
    procedure FormCreate(Sender : TObject);
    procedure SairClick(Sender: TObject);

  private
    { Private declarations }
    umaInter      : Interfaces;
    umPais        : Paises;
    umEstado      : Estados;
    umaCidade     : Cidades;
    umCliente     : Clientes;
    umFornecedor  : Fornecedores;
    umaMercadoria : Mercadorias;
    umFuncionario : Funcionarios;
    umaEntrega    : Entregas;
    umLancamento  : Lanšamentos;

    umaCtrlPaises       : CtrlPaises;
    umaCtrlEstados      : CtrlEstados;
    umaCtrlCidades      : CtrlCidades;
    umaCtrlClientes     : CtrlClientes;
    umaCtrlFornecedores : CtrlFornecedores;
    umaCtrlMercadorias  : CtrlMercadorias;
    umaCtrlFuncionarios : CtrlFuncionarios;
    umaCtrlEntregas     : CtrlEntregas;
    umaCtrlLancamentos  : CtrlLancamentos;

  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.CidadesClick(Sender: TObject);
begin
  umaInter.PDCidades(umaCidade, umaCtrlCidades);
end;

procedure TFrmMain.ClientesClick(Sender: TObject);
begin
  umaInter.PDClientes(umCliente, umaCtrlClientes);
end;

procedure TFrmMain.ConsultarEntregasClick(Sender: TObject);
begin
  umaInter.PDEntregas(umaEntrega, umaCtrlEntregas);
end;

procedure TFrmMain.ConsultarLancamentosClick(Sender: TObject);
begin
  umaInter.PDLancamentos(umLancamento, umaCtrlLancamentos);
end;

procedure TFrmMain.EstadosClick(Sender: TObject);
begin
  umaInter.PDEstados(umEstado, umaCtrlEstados);
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  umaCtrlCidades.Destrua_se;
  umaCtrlEstados.Destrua_se;
  umaCtrlPaises.Destrua_se;
  umaCtrlEntregas.Destrua_se;
  umaCtrlMercadorias.Destrua_se;
  umaCtrlFornecedores.Destrua_se;
  umaCtrlClientes.Destrua_se;
  umaCtrlFuncionarios.Destrua_se;
  umaCtrlLancamentos.Destrua_se;

  umaCidade.Destrua_se;
  umEstado.Destrua_se;
  umPais.Destrua_se;
  umaEntrega.Destrua_se;
  umaMercadoria.Destrua_se;
  umFornecedor.Destrua_se;
  umCliente.Destrua_se;
  umFuncionario.Destrua_se;
  umLancamento.Destrua_se;

  umaInter.Destrua_se;

end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin

  umaInter := Interfaces.CrieObj;

  umLancamento    := Lancamentos.CrieObj;
  umFuncionario   := Funcionarios.CrieObj;
  umCliente       := Clientes.CrieObj;
  umFornecedor    := Fornecedores.CrieObj;
  umaMercadoria   := Mercadorias.CrieObj;
  umaEntrega      := Entregas.CrieObj;
  umPais          := Paises.CrieObj;
  umEstado        := Estados.CrieObj;
  umaCidade       := Cidades.CrieObj;

  umaCtrlLancamentos    := CtrlLancamentos.CrieObj;
  umaCtrlFuncionarios   := CtrlFuncionarios.CrieObj;
  umaCtrlClientes       := CtrlClientes.CrieObj;
  umaCtrlFornecedores   := CtrlFornecedores.CrieObj;
  umaCtrlMercadorias    := CtrlMercadorias.CrieObj;
  umaCtrlEntregas       := CtrlEntregas.CrieObj;
  umaCtrlPaises         := CtrlPaises.CrieObj;
  umaCtrlEstados        := CtrlEstados.CrieObj;
  umaCtrlCidades        := CtrlCidades.CrieObj;

end;

procedure TFrmMain.FornecedoresClick(Sender: TObject);
begin
  umaInter.PDFornecedores(umFornecedor, umaCtrlFornecedores);
end;

procedure TFrmMain.FuncionariosClick(Sender: TObject);
begin
  umaInter.PDFuncionarios(umFuncionario, umaCtrlFuncionarios);
end;

procedure TFrmMain.MercadoriasClick(Sender: TObject);
begin
  umaInter.PDMercadorias(umaMercadoria, umaCtrlMercadorias);
end;

procedure TFrmMain.NovaEntregaClick(Sender: TObject);
begin
  umaInter.PDEntregas(umaEntrega, umaCtrlEntregas);
end;

procedure TFrmMain.NovoLancamentoClick(Sender: TObject);
begin
  umaInter.PDLancamentos(umLancamento, umaCtrlLancamentos);
end;

procedure TFrmMain.PaisesClick(Sender: TObject);
begin
  umaInter.PDPaises(umPais, umaCtrlPaises);
end;

procedure TFrmMain.SairClick(Sender: TObject);
begin
  Close;
end;

end.
