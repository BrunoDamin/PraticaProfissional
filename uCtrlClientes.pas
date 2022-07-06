unit uCtrlClientes;

interface
uses uCtrlPai, uDAOClientes, uClientes;

    type CtrlClientes = class(Controller)
      private
      protected
        umaDAOClientes : DAOClientes;
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

{ ControllerClientes }

function CtrlClientes.Carregar(pPos: integer): TObject;
begin
   result := umaDAOClientes.Carregar(pPos);
end;

function CtrlClientes.CarregarColecao: TObject;
begin
    inherited;
    result := umaDAOClientes.CarregarColecao;
end;

constructor CtrlClientes.CrieObj;
begin
    umaDAOClientes := DAOClientes.CrieObj;
end;

destructor CtrlClientes.Destrua_se;
begin
    umaDAOClientes.Destrua_se;
end;

function CtrlClientes.Excluir(pObj: TObject): boolean;
begin
  result := umaDAOClientes.Excluir(pObj);
end;

procedure CtrlClientes.LerArquivo;
begin
  inherited;
  umaDAOClientes.LerArquivo;
end;

function CtrlClientes.Pesquisar(pChave: String; pOBj : TObject): integer;
var mQuero : boolean;
    mCliente : Clientes;
begin
   mCliente := Clientes(pObj);
   if mCliente.getCodigo = 0 then
      mQuero := False
   else
      mQuero := True;

   result := umaDAOClientes.Pesquisar(pChave, mQuero);
end;

function CtrlClientes.Salvar(pObj: TObject): string;
begin
    result := umaDAOClientes.Salvar(pObj);
end;

procedure CtrlClientes.SalvarArquivo;
begin
  inherited;
   umaDAOClientes.SalvarArquivo;
end;

end.
