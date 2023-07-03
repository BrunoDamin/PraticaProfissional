unit uCtrlPai;

interface
    type Controller = class
      private
      protected
      public
        constructor CrieObj;
        destructor Destrua_se;
        function Salvar (pObj : TObject) : string;        virtual;
        function CarregarColecao: TObject;                virtual;
        function Carregar (pPos : integer) : TObject;     virtual;
        procedure SalvarArquivo;         virtual;
        procedure LerArquivo;             virtual;
        function Pesquisar (pChave : String; pOBj : TObject):integer; virtual;
        function Excluir (pObj : TObject) : boolean; virtual;
    end;

implementation

{ Controller }

function Controller.Carregar(pPos: integer): TObject;
begin

end;

function Controller.CarregarColecao: TObject;
begin

end;

constructor Controller.CrieObj;
begin

end;

destructor Controller.Destrua_se;
begin

end;

function Controller.Excluir(pObj: TObject): boolean;
begin

end;

procedure Controller.LerArquivo;
begin

end;

function Controller.Pesquisar(pChave: String; pOBj : TObject): integer;
begin

end;

function Controller.Salvar(pObj: TObject): string;
begin

end;

procedure Controller.SalvarArquivo;
begin

end;

end.

