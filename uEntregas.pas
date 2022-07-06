unit uEntregas;

interface
uses uPai, uClientes, uMercadorias, uFuncionarios;

type Entregas = Class(Pai)
  private
  protected
    umCliente : Clientes;
    umaMercadoria : Mercadorias;
    umFuncionario : Funcionarios;
  public
        constructor CrieObj;
        constructor CrieInit( pCodigo, pCodCliente, pCodMercadoria, pCodFuncionario : integer; pDataCad, pUltAlt: string);
        destructor Destrua_se;
        procedure setCliente(pCliente : Clientes);
        procedure setMercadoria(pMercadoria : Mercadorias);
        procedure setFuncionario(pFuncionario : Funcionarios);
        function getCliente : Clientes;
        function getMercadoria : Mercadorias;
        function getFuncionario : Funcionarios;
        function clone : Entregas;
End;

implementation

{ Entregas }

function Entregas.clone: Entregas;
begin
  result := Entregas.CrieInit(Codigo, umCliente.getCodigo, umaMercadoria.getCodigo, umFuncionario.getCodigo, dataCad, ultAlt);
end;

constructor Entregas.CrieInit(pCodigo, pCodCliente, pCodMercadoria,
  pCodFuncionario: integer; pDataCad, pUltAlt: string);
begin
    codigo := pCodigo;
    umCliente := Clientes.CrieInit(pCodCliente, '','','','','','','',0,'','');
    umaMercadoria := Mercadorias.CrieInit(pCodMercadoria,'',0,'',0,0,'','' );
    umFuncionario := Funcionarios.CrieInit(pCodFuncionario,'','',0,'','');
    DataCad := pDataCad;
    UltAlt := pUltAlt;
end;

constructor Entregas.CrieObj;
begin
    codigo := 0;
    umCliente := Clientes.CrieObj;
    umaMercadoria := Mercadorias.CrieObj;
    umFuncionario := Funcionarios.CrieObj;
    DataCad := '';
    UltAlt := '';
end;

destructor Entregas.Destrua_se;
begin
   umCliente.Destrua_se;
   umaMercadoria.Destrua_se;
   umFuncionario.Destrua_se;
end;

function Entregas.getCliente: Clientes;
begin
   result := umCliente;
end;

function Entregas.getFuncionario: Funcionarios;
begin
   result := umFuncionario;
end;

function Entregas.getMercadoria: Mercadorias;
begin
   result := umaMercadoria;
end;

procedure Entregas.setCliente(pCliente: Clientes);
begin
  umCliente := pCliente;
end;

procedure Entregas.setFuncionario(pFuncionario: Funcionarios);
begin
  umFuncionario := pFuncionario;
end;

procedure Entregas.setMercadoria(pMercadoria: Mercadorias);
begin
  umaMercadoria := pMercadoria;
end;

end.
