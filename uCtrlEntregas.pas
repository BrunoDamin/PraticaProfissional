unit uCtrlEntregas;


interface
uses uCtrlPai, uDAOEntregas, uEntregas;

    type CtrlEntregas = class(Controller)
      private
      protected
        umaDAOEntregas : DAOEntregas;
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

{ ControllerEntregas }

function CtrlEntregas.Carregar(pPos: integer): TObject;
begin
   result := umaDAOEntregas.Carregar(pPos);
end;

function CtrlEntregas.CarregarColecao: TObject;
begin
    inherited;
    result := umaDAOEntregas.CarregarColecao;
end;

constructor CtrlEntregas.CrieObj;
begin
    umaDAOEntregas := DAOEntregas.CrieObj;
end;

destructor CtrlEntregas.Destrua_se;
begin
    umaDAOEntregas.Destrua_se;
end;

function CtrlEntregas.Excluir(pObj: TObject): boolean;
begin
  result := umaDAOEntregas.Excluir(pObj);
end;

procedure CtrlEntregas.LerArquivo;
begin
  inherited;
  umaDAOEntregas.LerArquivo;
end;

function CtrlEntregas.Pesquisar(pChave: String; pOBj : TObject): integer;
var mQuero : boolean;
    mEntrega : Entregas;
begin
   mEntrega := Entregas(pObj);
   if mEntrega.getCodigo = 0 then
      mQuero := False
   else
      mQuero := True;

   result := umaDAOEntregas.Pesquisar(pChave, mQuero);
end;

function CtrlEntregas.Salvar(pObj: TObject): string;
begin
    result := umaDAOEntregas.Salvar(pObj);
end;

procedure CtrlEntregas.SalvarArquivo;
begin
  inherited;
   umaDAOEntregas.SalvarArquivo;
end;

end.
