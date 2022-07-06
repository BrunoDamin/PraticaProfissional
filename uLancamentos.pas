unit uLancamentos;

interface
uses uPai, uEntregas;

type Lancamentos = Class(Pai)
  private
  protected
    Valor : real;
    umaEntrega : Entregas;
  public
        constructor CrieObj;
        constructor CrieInit( pCodigo, pCodEntrega : integer; pValor : real; pDataCad, pUltAlt: string);
        destructor Destrua_se;
        procedure setValor(pValor : real);
        procedure setEntrega(pEntrega : Entregas);
        function getValor : real;
        function getEntrega : Entregas;
        function clone : Lancamentos;
End;

implementation

{ Lancamentos }

function Lancamentos.clone: Lancamentos;
begin
   result := Lancamentos.CrieInit(Codigo, umaEntrega.getCodigo, Valor, dataCad, ultAlt);
end;

constructor Lancamentos.CrieInit(pCodigo, pCodEntrega: integer; pValor: real;
  pDataCad, pUltAlt: string);
begin
    codigo := pCodigo;
    valor := pValor;
    umaEntrega := Entregas.CrieInit(pCodEntrega,0,0,0,'','');
    dataCad := pDataCad;
    ultAlt := pUltAlt;
end;

constructor Lancamentos.CrieObj;
begin
    codigo := 0;
    valor := 0;
    umaEntrega := Entregas.CrieObj;
    dataCad := '';
    ultAlt := '';
end;

destructor Lancamentos.Destrua_se;
begin
  umaEntrega.Destrua_se;
end;

function Lancamentos.getEntrega: Entregas;
begin
  result := umaEntrega;
end;

function Lancamentos.getValor: real;
begin
  result := Valor;
end;

procedure Lancamentos.setEntrega(pEntrega: Entregas);
begin
  umaEntrega := pEntrega;
end;

procedure Lancamentos.setValor(pValor: real);
begin
  Valor := pValor;
end;

end.
