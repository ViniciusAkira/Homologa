unit TicketCarListaProduto;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Grids, ActiveX, Cappta_Gp_Api_Com_1_0_TLB;

type
  { TFormTicketCarListaProdutos }

  TFormTicketCarListaProdutos = class(TForm)
    ProdutoOk: TButton;
    ProdutosStringGrid: TStringGrid;
    procedure ProdutoOkClick(Sender: TObject);

  private
    { Private declarations }
    FProdutoSelecionado : IProdutoTicketCar;
  public
    { Public declarations }
    Constructor Create(ProdutosTicketCarArray: PSafeArray); overload;
    property ProdutoSelecionado:IProdutoTicketCar read FProdutoSelecionado write FProdutoSelecionado;
  end;

var
  FormTicketCarListaProdutos: TFormTicketCarListaProdutos;

implementation
{$R *.lfm}

procedure TFormTicketCarListaProdutos.ProdutoOkClick(Sender: TObject);
var
  produtoTicketCar : IProdutoTicketCar;
  begin
       produtoTicketCar := CoProdutoTicketCar.Create;

       produtoTicketCar.RamoAtividadeId := StrToInt(ProdutosStringGrid.Cells[1, ProdutosStringGrid.Row]);
       produtoTicketCar.RamoAtividadeNome := ProdutosStringGrid.Cells[2, ProdutosStringGrid.Row];

       produtoTicketCar.TipoProdutoId := StrToInt(ProdutosStringGrid.Cells[3, ProdutosStringGrid.Row]);
       produtoTicketCar.TipoProdutoNome := ProdutosStringGrid.Cells[4, ProdutosStringGrid.Row];

       produtoTicketCar.ProdutoId := StrToInt(ProdutosStringGrid.Cells[5, ProdutosStringGrid.Row]);
       produtoTicketCar.ProdutoNome := ProdutosStringGrid.Cells[6, ProdutosStringGrid.Row];

       self.ProdutoSelecionado:= produtoTicketCar;
       self.Close;
end;

constructor TFormTicketCarListaProdutos.Create(ProdutosTicketCarArray: PSafeArray);
  var
     LBound, UBound, Contador: LongInt;
     produtoTicket: IProdutoTicketCar;
  begin

      ProdutosStringGrid.Columns.Add;
      ProdutosStringGrid.Columns[0].Title.Caption:= 'RamoAtividadeId';
      ProdutosStringGrid.Columns[0].Width:=120;

      ProdutosStringGrid.Columns.Add;
      ProdutosStringGrid.Columns[1].Title.Caption:= 'RamoAtividadeNome';
      ProdutosStringGrid.Columns[1].Width:=120;

      ProdutosStringGrid.Columns.Add;
      ProdutosStringGrid.Columns[2].Title.Caption:= 'TipoProdutoId';
      ProdutosStringGrid.Columns[2].Width:=120;

      ProdutosStringGrid.Columns.Add;
      ProdutosStringGrid.Columns[3].Title.Caption:= 'TipoProdutoNome';
      ProdutosStringGrid.Columns[3].Width:=120;


      ProdutosStringGrid.Columns.Add;
      ProdutosStringGrid.Columns[4].Title.Caption:='ProdutoId';
      ProdutosStringGrid.Columns[4].Width:=120;

      ProdutosStringGrid.Columns.Add;
      ProdutosStringGrid.Columns[5].Title.Caption:='ProdutoNome';
      ProdutosStringGrid.Columns[5].Width:=120;

      SafeArrayGetLBound(ProdutosTicketCarArray, 1, LBound);
      SafeArrayGetUBound(ProdutosTicketCarArray, 1, UBound);
      ProdutosStringGrid.RowCount:=UBound+1;

      for Contador := LBound to UBound do
      begin
           SafeArrayGetElement(ProdutosTicketCarArray, @Contador, produtoTicket);

           ProdutosStringGrid.Rows[Contador][1]:=  IntToStr(produtoTicket.RamoAtividadeId);
           ProdutosStringGrid.Rows[Contador][2]:=  produtoTicket.RamoAtividadeNome;

           ProdutosStringGrid.Rows[Contador][3]:=  IntToStr(produtoTicket.TipoProdutoId);
           ProdutosStringGrid.Rows[Contador][4]:=  produtoTicket.TipoProdutoNome;

           ProdutosStringGrid.Rows[Contador][5]:=  IntToStr(produtoTicket.ProdutoId);
           ProdutosStringGrid.Rows[Contador][6]:=  produtoTicket.ProdutoNome;
      end;
  end;
end.

