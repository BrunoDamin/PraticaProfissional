unit uDAOFornecedores;

interface
    uses uDAO, uFornecedores;

    type DAOFornecedores = class(DAO)
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

{ DAOFornecedors }

function DAOFornecedores.Carregar(pPos: integer): TObject;
begin
  inherited;
end;

function DAOFornecedores.CarregarColecao: TObject;
begin
  inherited;
end;

constructor DAOFornecedores.CrieObj;
begin
   inherited;
end;

destructor DAOFornecedores.Destrua_se;
begin
  inherited;
end;

function DAOFornecedores.Excluir(pObj: TObject): boolean;
begin
  inherited;;
end;

procedure DAOFornecedores.LerArquivo;
begin
  inherited;

end;

function DAOFornecedores.Pesquisar(pChave: String; pQuero : boolean): integer;
begin
  inherited;
end;

function DAOFornecedores.Salvar(pObj: TObject): string;

begin
  inherited;
end;

procedure DAOFornecedores.SalvarArquivo;
begin
  inherited;

end;

end.
