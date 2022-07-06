unit uDAOMercadorias;
interface
    uses uDAO, uMercadorias;

    type DAOMercadorias = class(DAO)
      private
      protected

      public
        constructor CrieObj;
        destructor Destrua_se;
        function Salvar (pObj : TObject):string; override;
        function CarregarColecao : TObject; override;
        function Carregar (pPos : integer) : TObject;     override;
        procedure SalvarArquivo;         override;
        procedure LerArquivo;             override;
        function Pesquisar (pChave : String; pQuero : boolean):integer; override;
        function Excluir (pObj : TObject) : boolean; override;
    end;

implementation

{ DAOMercadorias }

function DAOMercadorias.Carregar(pPos: integer): TObject;
begin
  inherited;
end;

function DAOMercadorias.CarregarColecao: TObject;
begin
  inherited;
end;

constructor DAOMercadorias.CrieObj;
begin
   inherited;
end;

destructor DAOMercadorias.Destrua_se;
begin
  inherited;
end;

function DAOMercadorias.Excluir(pObj: TObject): boolean;
begin
  inherited;;
end;

procedure DAOMercadorias.LerArquivo;
begin
  inherited;

end;

function DAOMercadorias.Pesquisar(pChave: String; pQuero : boolean): integer;
begin
  inherited;
end;

function DAOMercadorias.Salvar(pObj: TObject): string;

begin
  inherited;
end;

procedure DAOMercadorias.SalvarArquivo;
begin
  inherited;

end;

end.
