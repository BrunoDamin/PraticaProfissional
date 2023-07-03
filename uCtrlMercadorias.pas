unit uCtrlMercadorias;

interface
uses uCtrlPai, uDAOMercadorias, uMercadorias;

    type CtrlMercadorias = class(Controller)
      private
      protected
        umaDAOMercadorias : DAOMercadorias;
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

{ ControllerMercadorias }

function CtrlMercadorias.Carregar(pPos: integer): TObject;
begin
   result := umaDAOMercadorias.Carregar(pPos);
end;

function CtrlMercadorias.CarregarColecao: TObject;
begin
    inherited;
    result := umaDAOMercadorias.CarregarColecao;
end;

constructor CtrlMercadorias.CrieObj;
begin
    umaDAOMercadorias := DAOMercadorias.CrieObj;
end;

destructor CtrlMercadorias.Destrua_se;
begin
    umaDAOMercadorias.Destrua_se;
end;

function CtrlMercadorias.Excluir(pObj: TObject): boolean;
begin
  result := umaDAOMercadorias.Excluir(pObj);
end;

procedure CtrlMercadorias.LerArquivo;
begin
  inherited;
  umaDAOMercadorias.LerArquivo;
end;

function CtrlMercadorias.Pesquisar(pChave: String; pOBj : TObject): integer;
var mQuero : boolean;
    mMercadoria : Mercadorias;
begin
   mMercadoria := Mercadorias(pObj);
   if mMercadoria.getCodigo = 0 then
      mQuero := False
   else
      mQuero := True;

   result := umaDAOMercadorias.Pesquisar(pChave, mQuero);
end;

function CtrlMercadorias.Salvar(pObj: TObject): string;
begin
    result := umaDAOMercadorias.Salvar(pObj);
end;

procedure CtrlMercadorias.SalvarArquivo;
begin
  inherited;
   umaDAOMercadorias.SalvarArquivo;
end;

end.
