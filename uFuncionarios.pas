unit uFuncionarios;


interface
    uses uPai;

    type Funcionarios = class(Pai)
      private
      protected
        Nome : string[55];
        tipo : string[55];
        salario : real;
      public
        constructor CrieObj;
        constructor CrieInit( pCodigo : integer; pNome, pTipo: string; pSalario : real; pDataCad, pUltAlt: string);
        destructor Destrua_se;
        procedure setNome(pNome : string);
        procedure setTipo(pTipo : string);
        procedure setSalario(pSalario : real);
        function getNome : string;
        function getTipo : string;
        function getSalario : real;
        function clone : Funcionarios;
    end;

implementation

{ Funcionarios }

function Funcionarios.clone: Funcionarios;
begin
     result := Funcionarios.CrieInit(codigo, nome, tipo, salario, dataCad, ultAlt );
end;

constructor Funcionarios.CrieInit(pCodigo : integer; pNome, pTipo: string; pSalario : real; pDataCad, pUltAlt: string);
begin
    codigo := pCodigo;
    nome := pNome;
    tipo := pTipo;
    salario := pSalario;
    DataCad := pDataCad;
    UltALt := pUltAlt;

end;

constructor Funcionarios.CrieObj;
begin
    codigo := 0;
    nome := '';
    tipo := '';
    salario := 0;
    DataCad := '';
    UltALt := '';

end;

destructor Funcionarios.Destrua_se;
begin

end;


function Funcionarios.getNome: string;
begin
   result := Nome;
end;



function Funcionarios.getSalario: real;
begin
  result := Salario;
end;

function Funcionarios.getTipo: string;
begin
   result := Tipo;
end;


procedure Funcionarios.setNome(pNome: string);
begin
   Nome := pNome;
end;


procedure Funcionarios.setSalario(pSalario: real);
begin
   Salario := pSalario;
end;


procedure Funcionarios.setTipo(pTipo: string);
begin
   Tipo := pTipo;
end;

end.

