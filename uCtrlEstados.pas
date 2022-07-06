unit uCtrlEstados;

interface
uses uCtrlPai, uDAOEstados, uEstados;

    type CtrlEstados = class(Controller)
      private
      protected
        umaDAOEstados : DAOEstados;
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

{ ControllerEstados }

function CtrlEstados.Carregar(pPos: integer): TObject;
begin
   result := umaDAOEstados.Carregar(pPos);
end;

function CtrlEstados.CarregarColecao: TObject;
begin
    inherited;
    result := umaDAOEstados.CarregarColecao;
end;

constructor CtrlEstados.CrieObj;
begin
    umaDAOEstados := DAOEstados.CrieObj;
end;

destructor CtrlEstados.Destrua_se;
begin
    umaDAOEstados.Destrua_se;
end;

function CtrlEstados.Excluir(pObj: TObject): boolean;
begin
  result := umaDAOEstados.Excluir(pObj);
end;

procedure CtrlEstados.LerArquivo;
begin
  inherited;
  umaDAOEstados.LerArquivo;
end;

function CtrlEstados.Pesquisar(pChave: String; pOBj : TObject): integer;
var mQuero : boolean;
    mEstado : Estados;
begin
   mEstado := Estados(pObj);
   if mEstado.getCodigo = 0 then
      mQuero := False
   else
      mQuero := True;

   result := umaDAOEstados.Pesquisar(pChave, mQuero);
end;

function CtrlEstados.Salvar(pObj: TObject): string;
begin
    result := umaDAOEstados.Salvar(pObj);
end;

procedure CtrlEstados.SalvarArquivo;
begin
  inherited;
   umaDAOEstados.SalvarArquivo;
end;

end.
