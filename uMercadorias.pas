unit uMercadorias;

interface
  uses uPai, uFornecedores;

  type Mercadorias = Class(Pai)
    private
    protected
      mercadoria : string[55];
      quantidade : integer;
      tipo : string[55];
      valor : real;
      umFornecedor : Fornecedores;
    public
        constructor CrieObj;
        constructor CrieInit( pCodigo : integer; pMercadoria : string; pQuantidade : integer; pTipo : string; pvalor : real;pCodFornecedor : integer; pDataCad, pUltAlt: string);
        destructor Destrua_se;
        procedure setMercadoria(pMercadoria : string);
        procedure setQuantidade(pQuantidade : integer);
        procedure setTipo(pTipo : string);
        procedure setFornecedor(pFornecedor : Fornecedores);
        procedure setValor(pValor : real);
        function getMercadoria : string;
        function getQuantidade : integer;
        function getTipo : string;
        function getFornecedor : Fornecedores;
        function getValor : real;
        function clone : Mercadorias;
  End;

implementation

{ Mercadorias }

function Mercadorias.clone: Mercadorias;
begin
   result := Mercadorias.CrieInit(codigo, mercadoria, quantidade, tipo, valor,umFornecedor.getCodigo, dataCad, ultAlt );
end;

constructor Mercadorias.CrieInit(pCodigo: integer; pMercadoria: string;
  pQuantidade: integer; pTipo: string; pvalor : real; pCodFornecedor: integer; pDataCad,
  pUltAlt: string);
begin
    codigo := pCodigo;
    mercadoria := pMercadoria;
    quantidade := pQuantidade;
    tipo := pTipo;
    valor := pValor;
    umFornecedor := Fornecedores.CrieInit(pCodFornecedor, '', '', '', '', '', '', 0, '', '');
    DataCad := pDataCad;
    UltALt := pUltAlt;
end;

constructor Mercadorias.CrieObj;
begin
    codigo := 0;
    mercadoria := '';
    quantidade := 0;
    tipo := '';
    valor := 0;
    umFornecedor := Fornecedores.CrieObj;
    DataCad := '';
    UltALt := '';
end;

destructor Mercadorias.Destrua_se;
begin
   umFornecedor.Destrua_se;
end;

function Mercadorias.getFornecedor: Fornecedores;
begin
   result := umFornecedor;
end;

function Mercadorias.getMercadoria: string;
begin
   result := mercadoria;
end;

function Mercadorias.getQuantidade: integer;
begin
  result := quantidade;
end;

function Mercadorias.getTipo: string;
begin
  result := tipo;
end;

function Mercadorias.getValor: real;
begin
  result := valor;
end;

procedure Mercadorias.setFornecedor(pFornecedor: Fornecedores);
begin
  umFornecedor := pFornecedor;
end;

procedure Mercadorias.setMercadoria(pMercadoria: string);
begin
  mercadoria := pMercadoria;
end;

procedure Mercadorias.setQuantidade(pQuantidade: integer);
begin
  quantidade := pQuantidade;
end;

procedure Mercadorias.setTipo(pTipo: string);
begin
  tipo := pTipo;
end;

procedure Mercadorias.setValor(pValor: real);
begin
  valor := pvalor;
end;

end.
