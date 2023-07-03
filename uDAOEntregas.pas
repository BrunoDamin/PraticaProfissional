unit uDAOEntregas;


interface
    uses uDAO, uEntregas;

    type DAOEntregas = class(DAO)
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

{ DAOEntregas }

function DAOEntregas.Carregar(pPos: integer): TObject;
begin
  inherited;
end;

function DAOEntregas.CarregarColecao: TObject;
begin
  inherited;
end;

constructor DAOEntregas.CrieObj;
begin
   inherited;
end;

destructor DAOEntregas.Destrua_se;
begin
  inherited;
end;

function DAOEntregas.Excluir(pObj: TObject): boolean;
begin
  inherited;;
end;

procedure DAOEntregas.LerArquivo;
begin
  inherited;

end;

function DAOEntregas.Pesquisar(pChave: String; pQuero : boolean): integer;
begin
  inherited;
end;

function DAOEntregas.Salvar(pObj: TObject): string;

begin
  inherited;
end;

procedure DAOEntregas.SalvarArquivo;
begin
  inherited;

end;

end.
