unit uInterfaces;

interface
  uses  uFrmConsultaPaises, uFrmConsultaEstados, uFrmConsultaCidades,
        uFrmConsultaClientes, uFrmConsultaFornecedores, uFrmConsultaMercadorias,
        uFrmConsultaFuncionarios, uFrmConsultaEntregas, uFrmConsultaLancamentos,

        uFrmCadastroPaises, uFrmCadastroEstados, uFrmCadastroCidades,
        uFrmCadastroClientes, uFrmCadastroFornecedores, uFrmCadastroMercadorias,
        uFrmCadastroFuncionarios, uFrmCadastroEntregas, uFrmCadastroLancamentos;

  type interfaces = class
    private
    protected
      umFrmConsultaPaises       : TFrmConsultaPaises;
      umFrmConsultaEstados      : TFrmConsultaEstados;
      umFrmConsultaCidades      : TFrmConsultaCidades;
      umFrmConsultaClientes     : TFrmConsultaClientes;
      umFrmConsultaFornecedores : TFrmConsultaFornecedores;
      umFrmConsultaMercadorias  : TFrmConsultaMercadorias;
      umFrmConsultaFuncionarios : TFrmConsultaFuncionarios;
      umFrmConsultaEntregas     : TFrmConsultaEntregas;
      umFrmConsultaLancamentos  : TFrmConsultaLancamentos;


      umFrmCadastroPaises         : TFrmCadastroPaises;
      umFrmCadastroEstados        : TFrmCadastroEstados;
      umFrmCadastroCidades        : TFrmCadastroCidades;
      umFrmCadastroClientes       : TFrmCadastroClientes;
      umFrmCadastroFornecedores   : TFrmCadastroFornecedores;
      umFrmCadastroMercadorias    : TFrmCadastroMercadorias;
      umFrmCadastroFuncionarios   : TFrmCadastroFuncionarios;
      umFrmCadastroEntregas       : TFrmCadastroEntregas;
      umFrmCadastroLancamentos    : TFrmCadastroLancamentos;

    public
      constructor CrieObj;
      destructor Destrua_se;
      procedure PDPaises (pObj, pCtrl : TObject);
      procedure PDEstados(pObj, pCtrl : TObject);
      procedure PDCidades(pObj, pCtrl : TObject);
      procedure PDClientes(pObj, pCtrl : TObject);
      procedure PDFornecedores(pObj, pCtrl : TObject);
      procedure PDMercadorias(pObj, pCtrl : TObject);
      procedure PDFuncionarios (pObj, pCtrl : TObject);
      procedure PDEntregas(pObj, pCtrl : TObject);
      procedure PDLancamentos(pObj, pCtrl : TObject);

  end;

implementation

{ interfaces }

constructor interfaces.CrieObj;
begin
    umFrmConsultaPaises         := TFrmConsultaPaises.Create(nil);
    umFrmConsultaEstados        := TFrmConsultaEstados.Create(nil);
    umFrmConsultaCidades        := TFrmConsultaCidades.Create(nil);
    umFrmConsultaClientes       := TFrmConsultaClientes.Create(nil);
    umFrmConsultaMercadorias    := TFrmConsultaMercadorias.Create(nil);
    umFrmConsultaFuncionarios   := TFrmConsultaFuncionarios.Create(nil);
    umFrmConsultaFornecedores   := TFrmConsultaFornecedores.Create(nil);
    umFrmConsultaEntregas       := TFrmConsultaEntregas.Create(nil);
    umFrmConsultaLancamentos    := TFrmConsultaLancamentos.Create(nil);

    umFrmCadastroPaises         := TFrmCadastroPaises.Create(nil);
    umFrmCadastroEstados        := TFrmCadastroEstados.Create(nil);
    umFrmCadastroCidades        := TFrmCadastroCidades.Create(nil);
    umFrmCadastroClientes       := TFrmCadastroClientes.Create(nil);
    umFrmCadastroMercadorias    := TFrmCadastroMercadorias.Create(nil);
    umFrmCadastroFuncionarios   := TFrmCadastroFuncionarios.Create(nil);
    umFrmCadastroFornecedores   := TFrmCadastroFornecedores.Create(nil);
    umFrmCadastroEntregas       := TFrmCadastroEntregas.Create(nil);
    umFrmCadastroLancamentos    := TFrmCadastroLancamentos.Create(nil);

    umFrmConsultaPaises.setCadastro(umFrmCadastroPaises);
    umFrmConsultaEstados.setCadastro(umFrmCadastroEstados);
    umFrmConsultaCidades.setCadastro(umFrmCadastroCidades);
    umFrmConsultaClientes.setCadastro(umFrmCadastroClientes);
    umFrmConsultaMercadorias.setCadastro(umFrmCadastroMercadorias);
    umFrmConsultaFuncionarios.setCadastro(umFrmCadastroFuncionarios);
    umFrmConsultaFornecedores.setCadastro(umFrmCadastroFornecedores);
    umFrmConsultaEntregas.setCadastro(umFrmCadastroEntregas);
    umFrmConsultaLancamentos.setCadastro(umFrmCadastroLancamentos);

    umFrmCadastroEstados.setConsulta(umFrmConsultaPaises);
    umFrmCadastroCidades.setConsulta(umFrmConsultaEstados);
end;

destructor interfaces.Destrua_se;
begin
    umFrmConsultaPaises.FreeInstance;
    umFrmConsultaEstados.FreeInstance;
    umFrmConsultaCidades.FreeInstance;
    umFrmConsultaClientes.FreeInstance;
    umFrmConsultaMercadorias.FreeInstance;
    umFrmConsultaFuncionarios.FreeInstance;
    umFrmConsultaFornecedores.FreeInstance;
    umFrmConsultaEntregas.FreeInstance;
    umFrmConsultaLancamentos.FreeInstance;
end;

procedure interfaces.PDCidades(pObj, pCtrl: TObject);
begin
    umFrmConsultaCidades.ConhecaObj(pObj, pCtrl);
    umFrmConsultaCidades.ShowModal;
end;

procedure interfaces.PDClientes(pObj, pCtrl: TObject);
begin
    umFrmConsultaClientes.ConhecaObj(pObj, pCtrl);
    umFrmConsultaClientes.ShowModal;
end;

procedure interfaces.PDEntregas(pObj, pCtrl: TObject);
begin
    umFrmConsultaEntregas.ConhecaObj(pObj, pCtrl);
    umFrmConsultaEntregas.ShowModal;
end;

procedure interfaces.PDEstados(pObj, pCtrl: TObject);
begin
    umFrmConsultaEstados.ConhecaObj(pObj, pCtrl);
    umFrmConsultaEstados.ShowModal;
end;

procedure interfaces.PDFornecedores(pObj, pCtrl: TObject);
begin
    umFrmConsultaFornecedores.ConhecaObj(pObj, pCtrl);
    umFrmConsultaFornecedores.ShowModal;
end;

procedure interfaces.PDFuncionarios(pObj, pCtrl: TObject);
begin
    umFrmConsultaFuncionarios.ConhecaObj(pObj, pCtrl);
    umFrmConsultaFuncionarios.ShowModal;
end;

procedure interfaces.PDLancamentos(pObj, pCtrl: TObject);
begin
    umFrmConsultaLancamentos.ConhecaObj(pObj, pCtrl);
    umFrmConsultaLancamentos.ShowModal;
end;

procedure interfaces.PDMercadorias(pObj, pCtrl: TObject);
begin
    umFrmConsultaMercadorias.ConhecaObj(pObj, pCtrl);
    umFrmConsultaMercadorias.ShowModal;
end;

procedure interfaces.PDPaises(pObj, pCtrl: TObject);
begin
    umFrmConsultaPaises.ConhecaObj(pObj, pCtrl);
    umFrmConsultaPaises.ShowModal;
end;

end.
