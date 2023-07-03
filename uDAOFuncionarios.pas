unit uDAOFuncionarios;

interface
    uses uDAO, uFuncionarios;

    type DAOFuncionarios = class(DAO)
      private
      protected

      public
        constructor CrieObj;
        destructor Destrua_se;
        function Salvar (pObj : TObject):string; override;
        function CarregarColecao : TObject; override;
        function Carregar (pPos : integer) : TObject;     override;
        procedure SalvarArquivo;         override;
        procedure LerArquivo;             override;
        function Pesquisar (pChave : String; pQuero : boolean):integer; override;
        function Excluir (pObj : TObject) : boolean; override;
    end;

implementation

{ DAOFuncionarios }

function DAOFuncionarios.Carregar(pPos: integer): TObject;
begin
  inherited;
end;

function DAOFuncionarios.CarregarColecao: TObject;
begin
  inherited;
end;

constructor DAOFuncionarios.CrieObj;
begin
   inherited;
end;

destructor DAOFuncionarios.Destrua_se;
begin
  inherited;
end;

function DAOFuncionarios.Excluir(pObj: TObject): boolean;
begin
  inherited;;
end;

procedure DAOFuncionarios.LerArquivo;
begin
  inherited;

end;

function DAOFuncionarios.Pesquisar(pChave: String; pQuero : boolean): integer;
begin
  inherited;
end;

function DAOFuncionarios.Salvar(pObj: TObject): string;

begin
  inherited;
end;

procedure DAOFuncionarios.SalvarArquivo;
begin
  inherited;

end;

end.
