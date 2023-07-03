unit uCtrlCidades;

interface
uses uCtrlPai, uDAOCidades, uCidades;

    type CtrlCidades = class(Controller)
      private
      protected
        umaDAOCidades : DAOCidades;
      public
        constructor CrieObj;
        destructor Destrua_se;
        function Salvar (pObj : TObject) : string;        override;
        function CarregarColecao : TObject;               override;
        function Carregar (pPos : integer) : TObject;     override;
        procedure SalvarArquivo;         override;
        procedure LerArquivo;             override;
        function Pesquisar (pChave : String; pOBj : TObject):integer; override;
        function Excluir (pObj : TObject) : boolean; override;
    end;

implementation

{ ControllerCidades }

function CtrlCidades.Carregar(pPos: integer): TObject;
begin
   result := umaDAOCidades.Carregar(pPos);
end;

function CtrlCidades.CarregarColecao: TObject;
begin
    inherited;
    result := umaDAOCidades.CarregarColecao;
end;

constructor CtrlCidades.CrieObj;
begin
    umaDAOCidades := DAOCidades.CrieObj;
end;

destructor CtrlCidades.Destrua_se;
begin
    umaDAOCidades.Destrua_se;
end;

function CtrlCidades.Excluir(pObj: TObject): boolean;
begin
  result := umaDAOCidades.Excluir(pObj);
end;

procedure CtrlCidades.LerArquivo;
begin
  inherited;
  umaDAOCidades.LerArquivo;
end;

function CtrlCidades.Pesquisar(pChave: String; pOBj : TObject): integer;
var mQuero : boolean;
    mCidade : Cidades;
begin
   mCidade := Cidades(pObj);
   if mCidade.getCodigo = 0 then
      mQuero := False
   else
      mQuero := True;

   result := umaDAOCidades.Pesquisar(pChave, mQuero);
end;

function CtrlCidades.Salvar(pObj: TObject): string;
begin
    result := umaDAOCidades.Salvar(pObj);
end;

procedure CtrlCidades.SalvarArquivo;
begin
  inherited;
   umaDAOCidades.SalvarArquivo;
end;

end.
