unit uClientes;

interface

uses uPai, uCidades;

    type Clientes = class(Pai)
      private
      protected
        Nome : string[55];
        tipo : string[5];
        documento : string[14];
        rua : string[55];
        numero : string[10];
        bairro : string[55];
        cep : string[15];
        umaCidade : Cidades;
      public
        constructor CrieObj;
        constructor CrieInit( pCodigo : integer; pNome, pTipo, pDocumento, pRua, pNumero, pBairro, pCep : string; pCodCidade : integer; pDataCad, pUltAlt: string);
        destructor Destrua_se;
        procedure setNome(pNome : string);
        procedure setTipo(pTipo : string);
        procedure setDocumento(pDocumento : string);
        procedure setRua(pRua : string);
        procedure setNumero(pNumero : string);
        procedure setBairro(pBairro : string);
        procedure setCep(pCep : string);
        procedure setCidade(pCidade : Cidades);
        function getNome : string;
        function getTipo : string;
        function getDocumento : string;
        function getRua : string;
        function getNumero : string;
        function getBairro : string;
        function getCep : string;
        function getCidade : Cidades;
        function clone : Clientes;
    end;

implementation

{ Clientes }

function Clientes.clone: Clientes;
begin
     result := Clientes.CrieInit(codigo, nome, tipo, documento, rua, numero, bairro, cep, umaCidade.getCodigo, dataCad, ultAlt );
end;

constructor Clientes.CrieInit(pCodigo: integer; pNome, pTipo, pDocumento, pRua, pNumero, pBairro, pCep : string; pCodCidade : integer; pDataCad, pUltAlt: string);
begin
    codigo := pCodigo;
    nome := pNome;
    Tipo := pTipo;
    Documento := pDocumento;
    Rua := pRua;
    Numero := pNumero;
    Bairro := pBairro;
    Cep := pCep;
    umaCidade := Cidades.CrieInit(pCodCidade,'','','','',0);
    DataCad := pDataCad;
    UltALt := pUltAlt;

end;

constructor Clientes.CrieObj;
begin
    codigo := 0;
    nome := '';
    tipo := '';
    documento := '';
    Rua := '';
    Numero := '';
    Bairro := '';
    Cep := '';
    umaCidade := Cidades.CrieObj;
    DataCad := '';
    UltAlt := '';

end;

destructor Clientes.Destrua_se;
begin
  umaCidade.Destrua_se;
end;

function Clientes.getBairro: string;
begin
  result := Bairro;
end;

function Clientes.getCep: string;
begin
  result := Cep;
end;

function Clientes.getCidade: Cidades;
begin
  result := umaCidade;
end;

function Clientes.getDocumento: string;
begin
  result := documento;
end;

function Clientes.getTipo: string;
begin
  result := tipo;
end;


function Clientes.getNome: string;
begin
  result := Nome;
end;

function Clientes.getNumero: string;
begin
  result := numero;
end;


function Clientes.getRua: string;
begin
  result := rua;
end;


procedure Clientes.setBairro(pBairro: string);
begin
 bairro := pbairro;
end;

procedure Clientes.setCep(pCep: string);
begin
  cep := pcep;
end;

procedure Clientes.setCidade(pCidade: Cidades);
begin
  umaCidade := pCidade;
end;

procedure Clientes.setDocumento(pDocumento: string);
begin
   documento := pDocumento;
end;

procedure Clientes.setTipo(pTipo: string);
begin
  tipo := pTipo;
end;


procedure Clientes.setNome(pNome: string);
begin
  Nome := pNome;
end;

procedure Clientes.setNumero(pNumero: string);
begin
  numero := pnumero;
end;


procedure Clientes.setRua(pRua: string);
begin
 rua := prua;
end;


end.

