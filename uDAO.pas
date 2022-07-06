unit uDAO;


interface
    type DAO = class
      private
      protected
      public
        constructor CrieObj;
        destructor Destrua_se;
        function Salvar (pObj : TObject) : string;        virtual;
        function CarregarColecao : TObject;               virtual;
        function Carregar (pPos : integer) : TObject;     virtual;
        procedure SalvarArquivo;                          virtual;
        procedure LerArquivo;                             virtual;
        function Pesquisar (pChave : String; pQuero : boolean):integer; virtual;
        function Excluir (pObj : TObject) : boolean;      virtual;
    end;

implementation

{ DAO }

function DAO.Carregar(pPos: integer): TObject;
begin

end;

function DAO.CarregarColecao: TObject;
begin

end;

constructor DAO.CrieObj;
begin

end;

destructor DAO.Destrua_se;
begin

end;

function DAO.Excluir(pObj: TObject): boolean;
begin

end;

procedure DAO.LerArquivo;
begin

end;

function DAO.Pesquisar(pChave: String; pQuero : boolean): integer;
begin

end;

function DAO.Salvar(pObj: TObject): string;
begin

end;

procedure DAO.SalvarArquivo;
begin

end;

end.
