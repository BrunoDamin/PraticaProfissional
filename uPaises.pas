unit uPaises;

interface
    uses uPai;

    type Paises = class(Pai)
      private
      protected
        Pais : string[55];
        Sigla : string[3];
        DDI : string[5];
        Moeda : string[3];
      public
        constructor CrieObj;
        constructor CrieInit( pCodigo : integer; pPais, pSigla, pDDI, pMoeda : string; pDataCad, pUltAlt: string);
        destructor Destrua_se;
        procedure setPais(pPais : string);
        procedure setSigla(pSigla : string);
        procedure setDDI(pDDI : string);
        procedure setMoeda(pMoeda : string);
        function getPais : string;
        function getSigla : string;
        function getDDI : string;
        function getMoeda : string;
        function clone : Paises;
    end;

implementation

{ Paises }

function Paises.clone: Paises;
begin
     result := Paises.CrieInit(codigo, pais, sigla, ddi, moeda, dataCad, ultAlt );
end;

constructor Paises.CrieInit(pCodigo: integer; pPais, pSigla, pDDI, pMoeda : string; pDataCad, pUltAlt: string);
begin
    codigo := pCodigo;
    pais := pPais;
    sigla := pSigla;
    DDI := pDDI;
    moeda := pMoeda;
    DataCad := pDataCad;
    UltALt := pUltAlt;

end;

constructor Paises.CrieObj;
begin
    codigo := 0;
    Pais := '';
    Sigla := '';
    DDI := '';
    moeda := '';
    DataCad := '';
    UltAlt := '';

end;

destructor Paises.Destrua_se;
begin

end;

function Paises.getDDI: string;
begin
    result := DDI;
end;

function Paises.getMoeda: string;
begin
    result := moeda;
end;

function Paises.getPais: string;
begin
    result := Pais;
end;

function Paises.getSigla: string;
begin
    result := Sigla;
end;

procedure Paises.setDDI(pDDI: string);
begin
   DDI := pDDI;
end;

procedure Paises.setMoeda(pMoeda: string);
begin
   moeda := pMoeda;
end;

procedure Paises.setPais(pPais: string);
begin
   Pais := pPais;
end;

procedure Paises.setSigla(pSigla: string);
begin
   Sigla := pSigla;
end;

end.

