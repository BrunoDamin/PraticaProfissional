unit uEstados;

interface
    uses uPai, uPaises;

    type Estados = class(Pai)
      private
      protected
        Estado : string[55];
        UF : string[2];
        umPais : Paises;
      public
        constructor CrieObj;
        constructor CrieInit( pCodigo : integer; pEstado, pUF, pDataCad, pUltAlt: string; pCodPais : integer);
        destructor Destrua_se;
        procedure setEstado(pEstado : string);
        procedure setUF(pUF : string);
        procedure setPais(pPais : Paises);
        function getEstado : string;
        function getUF : string;
        function getPais : Paises;
        function clone : Estados;
    end;

implementation

{ Estados }

function Estados.clone: Estados;
begin
    result := Estados.CrieInit(codigo, estado, uf, dataCad, ultAlt,  umPais.getCodigo );
end;

constructor Estados.CrieInit(pCodigo : integer; pEstado, pUF, pDataCad, pUltAlt: string; pCodPais : integer);
begin
    codigo := pCodigo;
    estado := pEstado;
    UF := pUF;
    umPais := Paises.CrieInit(pCodPais, '', '', '', '', '','');
    DataCad := pDataCad;
    UltALt := pUltAlt;
end;

constructor Estados.CrieObj;
begin
    codigo := 0;
    estado := '';
    UF := '';
    umPais := Paises.CrieObj;
    DataCad := '';
    UltALt := '';
end;

destructor Estados.Destrua_se;
begin
   umPais.Destrua_se;
end;

function Estados.getEstado: string;
begin
    result := Estado;
end;

function Estados.getPais: Paises;
begin
    result := umPais;
end;

function Estados.getUF: string;
begin
    result := UF;
end;

procedure Estados.setEstado(pEstado: string);
begin
   estado := pEstado
end;

procedure Estados.setPais(pPais: Paises);
begin
   umPais := pPais;
end;

procedure Estados.setUF(pUF: string);
begin
   UF := pUF;
end;

end.

