unit uCtrlFornecedores;


interface
uses uCtrlPai, uDAOFornecedores, uFornecedores;

    type CtrlFornecedores = class(Controller)
      private
      protected
        umaDAOFornecedores : DAOFornecedores;
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

{ ControllerFornecedors }

function CtrlFornecedores.Carregar(pPos: integer): TObject;
begin
   result := umaDAOFornecedores.Carregar(pPos);
end;

function CtrlFornecedores.CarregarColecao: TObject;
begin
    inherited;
    result := umaDAOFornecedores.CarregarColecao;
end;

constructor CtrlFornecedores.CrieObj;
begin
    umaDAOFornecedores := DAOFornecedores.CrieObj;
end;

destructor CtrlFornecedores.Destrua_se;
begin
    umaDAOFornecedores.Destrua_se;
end;

function CtrlFornecedores.Excluir(pObj: TObject): boolean;
begin
  result := umaDAOFornecedores.Excluir(pObj);
end;

procedure CtrlFornecedores.LerArquivo;
begin
  inherited;
  umaDAOFornecedores.LerArquivo;
end;

function CtrlFornecedores.Pesquisar(pChave: String; pOBj : TObject): integer;
var mQuero : boolean;
    mFornecedor : Fornecedores;
begin
   mFornecedor := Fornecedores(pObj);
   if mFornecedor.getCodigo = 0 then
      mQuero := False
   else
      mQuero := True;

   result := umaDAOFornecedores.Pesquisar(pChave, mQuero);
end;

function CtrlFornecedores.Salvar(pObj: TObject): string;
begin
    result := umaDAOFornecedores.Salvar(pObj);
end;

procedure CtrlFornecedores.SalvarArquivo;
begin
  inherited;
   umaDAOFornecedores.SalvarArquivo;
end;

end.
