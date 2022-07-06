program Project1;

uses
  Vcl.Forms,
  uMain in '..\..\Documents\Embarcadero\Studio\Projects\uMain.pas' {FrmMain},
  uInterfaces in '..\..\Documents\Embarcadero\Studio\Projects\uInterfaces.pas',
  uPai in '..\..\Documents\Embarcadero\Studio\Projects\uPai.pas',
  uPaises in '..\..\Documents\Embarcadero\Studio\Projects\uPaises.pas',
  uEstados in '..\..\Documents\Embarcadero\Studio\Projects\uEstados.pas',
  uCidades in '..\..\Documents\Embarcadero\Studio\Projects\uCidades.pas',
  uFrmCadastroPai in '..\..\Documents\Embarcadero\Studio\Projects\uFrmCadastroPai.pas' {FrmCadastroPai},
  uFrmCadastroPaises in '..\..\Documents\Embarcadero\Studio\Projects\uFrmCadastroPaises.pas' {FrmCadastroPaises},
  uCtrlPai in '..\..\Documents\Embarcadero\Studio\Projects\uCtrlPai.pas',
  uCtrlPaises in '..\..\Documents\Embarcadero\Studio\Projects\uCtrlPaises.pas',
  uDAOPaises in '..\..\Documents\Embarcadero\Studio\Projects\uDAOPaises.pas',
  uDAO in '..\..\Documents\Embarcadero\Studio\Projects\uDAO.pas',
  uFrmConsultaPai in '..\..\Documents\Embarcadero\Studio\Projects\uFrmConsultaPai.pas' {FrmConsultaPai},
  uFrmConsultaPaises in '..\..\Documents\Embarcadero\Studio\Projects\uFrmConsultaPaises.pas' {FrmConsultaPaises},
  uDM in 'uDM.pas' {DM: TDataModule},
  uFrmConsultaEstados in 'uFrmConsultaEstados.pas' {FrmConsultaEstados},
  uFrmCadastroEstados in 'uFrmCadastroEstados.pas' {FrmCadastroEstados},
  uCtrlEstados in 'uCtrlEstados.pas',
  uDAOEstados in 'uDAOEstados.pas',
  uFrmConsultaCidades in 'uFrmConsultaCidades.pas' {FrmConsultaCidades},
  uFrmCadastroCidades in 'uFrmCadastroCidades.pas' {FrmCadastroCidades},
  uCtrlCidades in 'uCtrlCidades.pas',
  uDAOCidades in 'uDAOCidades.pas',
  uMercadorias in 'uMercadorias.pas',
  uFornecedores in 'uFornecedores.pas',
  uFuncionarios in 'uFuncionarios.pas',
  uClientes in 'uClientes.pas',
  uEntregas in 'uEntregas.pas',
  uLancamentos in 'uLancamentos.pas',
  uFrmConsultaFornecedores in 'uFrmConsultaFornecedores.pas' {FrmConsultaFornecedores},
  uFrmConsultaMercadorias in 'uFrmConsultaMercadorias.pas' {FrmConsultaMercadorias},
  uFrmConsultaClientes in 'uFrmConsultaClientes.pas' {FrmConsultaClientes},
  uFrmConsultaFuncionarios in 'uFrmConsultaFuncionarios.pas' {FrmConsultaFuncionarios},
  uFrmConsultaEntregas in 'uFrmConsultaEntregas.pas' {FrmConsultaEntregas},
  uFrmCadastroClientes in 'uFrmCadastroClientes.pas' {FrmCadastroClientes},
  uCtrlClientes in 'uCtrlClientes.pas',
  uDAOClientes in 'uDAOClientes.pas',
  uCtrlFuncionarios in 'uCtrlFuncionarios.pas',
  uDAOFuncionarios in 'uDAOFuncionarios.pas',
  uCtrlFornecedores in 'uCtrlFornecedores.pas',
  uDAOFornecedores in 'uDAOFornecedores.pas',
  uFrmCadastroFornecedores in 'uFrmCadastroFornecedores.pas' {FrmCadastroFornecedores},
  uCtrlMercadorias in 'uCtrlMercadorias.pas',
  uDAOMercadorias in 'uDAOMercadorias.pas',
  uFrmCadastroMercadorias in 'uFrmCadastroMercadorias.pas' {FrmCadastroMercadorias},
  uFrmCadastroFuncionarios in 'uFrmCadastroFuncionarios.pas' {FrmCadastroFuncionarios},
  uCtrlEntregas in 'uCtrlEntregas.pas',
  uDAOEntregas in 'uDAOEntregas.pas',
  uFrmCadastroEntregas in 'uFrmCadastroEntregas.pas' {FrmCadastroEntregas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmCadastroPai, FrmCadastroPai);
  Application.CreateForm(TFrmCadastroPaises, FrmCadastroPaises);
  Application.CreateForm(TFrmConsultaPai, FrmConsultaPai);
  Application.CreateForm(TFrmConsultaPaises, FrmConsultaPaises);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmConsultaEstados, FrmConsultaEstados);
  Application.CreateForm(TFrmCadastroEstados, FrmCadastroEstados);
  Application.CreateForm(TFrmConsultaCidades, FrmConsultaCidades);
  Application.CreateForm(TFrmCadastroCidades, FrmCadastroCidades);
  Application.CreateForm(TFrmConsultaFornecedores, FrmConsultaFornecedores);
  Application.CreateForm(TFrmConsultaMercadorias, FrmConsultaMercadorias);
  Application.CreateForm(TFrmConsultaClientes, FrmConsultaClientes);
  Application.CreateForm(TFrmConsultaFuncionarios, FrmConsultaFuncionarios);
  Application.CreateForm(TFrmConsultaEntregas, FrmConsultaEntregas);
  Application.CreateForm(TFrmCadastroClientes, FrmCadastroClientes);
  Application.CreateForm(TFrmCadastroFornecedores, FrmCadastroFornecedores);
  Application.CreateForm(TFrmCadastroMercadorias, FrmCadastroMercadorias);
  Application.CreateForm(TFrmCadastroFuncionarios, FrmCadastroFuncionarios);
  Application.CreateForm(TFrmCadastroEntregas, FrmCadastroEntregas);
  Application.Run;
end.
