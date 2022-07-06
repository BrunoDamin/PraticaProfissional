unit uCtrlFuncionarios;

interface
uses uCtrlPai, uDAOFuncionarios, uFuncionarios;

    type CtrlFuncionarios = class(Controller)
      private
      protected
        umaDAOFuncionarios : DAOFuncionarios;
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

{ ControllerFuncionarios }

function CtrlFuncionarios.Carregar(pPos: integer): TObject;
begin
   result := umaDAOFuncionarios.Carregar(pPos);
end;

function CtrlFuncionarios.CarregarColecao: TObject;
begin
    inherited;
    result := umaDAOFuncionarios.CarregarColecao;
end;

constructor CtrlFuncionarios.CrieObj;
begin
    umaDAOFuncionarios := DAOFuncionarios.CrieObj;
end;

destructor CtrlFuncionarios.Destrua_se;
begin
    umaDAOFuncionarios.Destrua_se;
end;

function CtrlFuncionarios.Excluir(pObj: TObject): boolean;
begin
  result := umaDAOFuncionarios.Excluir(pObj);
end;

procedure CtrlFuncionarios.LerArquivo;
begin
  inherited;
  umaDAOFuncionarios.LerArquivo;
end;

function CtrlFuncionarios.Pesquisar(pChave: String; pOBj : TObject): integer;
var mQuero : boolean;
    mFuncionario : Funcionarios;
begin
   mFuncionario := Funcionarios(pObj);
   if mFuncionario.getCodigo = 0 then
      mQuero := False
   else
      mQuero := True;

   result := umaDAOFuncionarios.Pesquisar(pChave, mQuero);
end;

function CtrlFuncionarios.Salvar(pObj: TObject): string;
begin
    result := umaDAOFuncionarios.Salvar(pObj);
end;

procedure CtrlFuncionarios.SalvarArquivo;
begin
  inherited;
   umaDAOFuncionarios.SalvarArquivo;
end;

end.
