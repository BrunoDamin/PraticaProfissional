unit uCtrlPaises;


interface
    uses uCtrlPai, uDAOPaises, uPaises;

    type CtrlPaises = class(Controller)
      private
      protected
        umaDAOPaises : DAOPaises;
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

{ ControllerPaises }

function CtrlPaises.Carregar(pPos: integer): TObject;
begin
   result := umaDAOPaises.Carregar(pPos);
end;

function CtrlPaises.CarregarColecao: TObject;
begin
    inherited;
    result := umaDAOPaises.CarregarColecao;
end;

constructor CtrlPaises.CrieObj;
begin
    umaDAOPaises := DAOPaises.CrieObj;
end;

destructor CtrlPaises.Destrua_se;
begin
    umaDAOPaises.Destrua_se;
end;

function CtrlPaises.Excluir(pObj: TObject): boolean;
begin
  result := umaDAOPaises.Excluir(pObj);
end;

procedure CtrlPaises.LerArquivo;
begin
  inherited;
  umaDAOPaises.LerArquivo;
end;

function CtrlPaises.Pesquisar(pChave: String; pOBj : TObject): integer;
var mQuero : boolean;
    mPais : Paises;
begin
   mPais := Paises(pObj);
   if mPais.getCodigo = 0 then
      mQuero := False
   else
      mQuero := True;

   result := umaDAOPaises.Pesquisar(pChave, mQuero);
end;

function CtrlPaises.Salvar(pObj: TObject): string;
begin
    result := umaDAOPaises.Salvar(pObj);
end;

procedure CtrlPaises.SalvarArquivo;
begin
  inherited;
   umaDAOPaises.SalvarArquivo;
end;

end.
