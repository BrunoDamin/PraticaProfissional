unit uFornecedores;

interface
    uses uPai, uCidades;

    type Fornecedores = class(Pai)
      private
      protected
        NomeFantasia : string[55];
        cnpj : string[14];
        rua : string[55];
        numero : string[10];
        bairro : string[55];
        cep : string[15];
        umaCidade : Cidades;
      public
        constructor CrieObj;
        constructor CrieInit( pCodigo : integer; pNomeFantasia, pCnpj, pRua, pNumero, pBairro, pCep : string; pCodCidade : integer; pDataCad, pUltAlt: string);
        destructor Destrua_se;
        procedure setNomeFantasia(pNomeFantasia : string);
        procedure setCnpj(pCnpj : string);
        procedure setRua(pRua : string);
        procedure setNumero(pNumero : string);
        procedure setBairro(pBairro : string);
        procedure setCep(pCep : string);
        procedure setCidade(pCidade : Cidades);
        function getNomeFantasia : string;
        function getCnpj : string;
        function getRua : string;
        function getNumero : string;
        function getBairro : string;
        function getCep : string;
        function getCidade : Cidades;
        function clone : Fornecedores;
    end;

implementation

{ Fornecedores }

function Fornecedores.clone: Fornecedores;
begin
     result := Fornecedores.CrieInit(codigo, nomefantasia, cnpj, rua, numero, bairro, cep, umaCidade.getCodigo, dataCad, ultAlt );
end;

constructor Fornecedores.CrieInit(pCodigo: integer; pNomeFantasia, pCnpj, pRua, pNumero, pBairro, pCep : string; pCodCidade : integer; pDataCad, pUltAlt: string);
begin
    codigo := pCodigo;
    nomeFantasia := pNomeFantasia;
    Cnpj := pCnpj;
    Rua := pRua;
    Numero := pNumero;
    Bairro := pBairro;
    Cep := pCep;
    umaCidade := Cidades.CrieInit(pCodCidade,'','','','',0);
    DataCad := pDataCad;
    UltALt := pUltAlt;

end;

constructor Fornecedores.CrieObj;
begin
    codigo := 0;
    nomeFantasia := '';
    Cnpj := '';
    Rua := '';
    Numero := '';
    Bairro := '';
    Cep := '';
    umaCidade := Cidades.CrieObj;
    DataCad := '';
    UltAlt := '';

end;

destructor Fornecedores.Destrua_se;
begin
  umaCidade.Destrua_se;
end;

function Fornecedores.getBairro: string;
begin
  result := Bairro;
end;

function Fornecedores.getCep: string;
begin
  result := Cep;
end;

function Fornecedores.getCidade: Cidades;
begin
  result := umaCidade;
end;

function Fornecedores.getCnpj: string;
begin
  result := Cnpj;
end;


function Fornecedores.getNomeFantasia: string;
begin
  result := NomeFantasia;
end;

function Fornecedores.getNumero: string;
begin
  result := numero;
end;


function Fornecedores.getRua: string;
begin
  result := rua;
end;


procedure Fornecedores.setBairro(pBairro: string);
begin
 bairro := pbairro;
end;

procedure Fornecedores.setCep(pCep: string);
begin
  cep := pcep;
end;

procedure Fornecedores.setCidade(pCidade: Cidades);
begin
  umaCidade := pCidade;
end;

procedure Fornecedores.setCnpj(pCnpj: string);
begin
  cnpj := pcnpj;
end;


procedure Fornecedores.setNomeFantasia(pNomeFantasia: string);
begin
  NomeFantasia := pNomeFantasia;
end;

procedure Fornecedores.setNumero(pNumero: string);
begin
  numero := pnumero;
end;


procedure Fornecedores.setRua(pRua: string);
begin
 rua := prua;
end;


end.

