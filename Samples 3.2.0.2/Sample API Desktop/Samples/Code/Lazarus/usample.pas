unit uSample;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls, Spin, ExtCtrls, MaskEdit, TicketCarListaProduto, types, Windows, Cappta_Gp_Api_Com_1_0_TLB,
  xmlread, dom, ActiveX, Variants, StrUtils, Math;

type

  { TFormulario }

  TFormulario = class(TForm)
    ButtonSolicitarInformacaoPinpad: TButton;
    ButtonExecutarCancelamento: TButton;
    ButtonExecutarCrediario: TButton;
    ButtonExecutarCredito: TButton;
    ButtonExecutarDebito: TButton;
    ButtonExecutarPagamentoTicketCar: TButton;
    ButtonExecutarReimpressao: TButton;
    ComboBoxTipoInformacaoPinpad: TComboBox;
    ComboBoxTipoParcelamentoPagamentoCredito: TComboBox;
    ddd: TEdit;
    dddLabel: TLabel;
    EditNumeroDocumentoFiscalTicketCar: TEdit;
    lblConfiguracaoInterface: TLabel;
    numero: TEdit;
    numeroLabel: TLabel;
    operadoraCombobox: TComboBox;
    PanelExibirInterface: TPanel;
    productCombobox: TComboBox;
    produtosLabel: TLabel;
    RadioButtonInterfaceInvisivel: TRadioButton;
    RadioButtonInterfaceVisivel: TRadioButton;
    recarga: TButton;
    TextEditNumeroControleCancelamento: TEdit;
    TextEditNumeroControleReimpressaoCupom: TEdit;
    EditSenhaAdministrativaCancelamento: TEdit;
    EditNumeroSerialTicketCar: TEdit;
    FloatSpinEditCupomFiscalCancelamento: TFloatSpinEdit;
    FloatSpinEditCupomFiscalPagamentoCrediario: TFloatSpinEdit;
    FloatSpinEditCupomFiscalPagamentoCredito: TFloatSpinEdit;
    FloatSpinEditCupomFiscalPagamentoDebito: TFloatSpinEdit;
    FloatSpinEditCupomFiscalReimpressaoCupom: TFloatSpinEdit;
    FloatSpinEditQuantidadeDePagamentosMultiTef: TFloatSpinEdit;
    FloatSpinEditQuantidadeParcelasPagamentoCredito: TFloatSpinEdit;
    FloatSpinEditQuantidadeParcelasPagamentoCrediario: TFloatSpinEdit;
    FloatSpinEditValorPagamentoCrediario: TFloatSpinEdit;
    FloatSpinEditValorPagamentoCredito: TFloatSpinEdit;
    FloatSpinEditValorPagamentoDebito: TFloatSpinEdit;
    FloatSpinEditValorPagamentoTicketCar: TFloatSpinEdit;
    GroupBoxDadosCancelamento: TGroupBox;
    GroupBoxDadosPagamentoCredito: TGroupBox;
    GroupBoxDadosPagamentoCrediario: TGroupBox;
    GroupBoxDadosPagamentoDebito: TGroupBox;
    GroupBoxDadosPagamentoTicketCar: TGroupBox;
    GroupBoxDadosReimpressaoCupom: TGroupBox;
    GroupBoxResultado: TGroupBox;
    LabelTipoEntradaPinpad: TLabel;
    LabelCupomFiscalCancelamento: TLabel;
    LabelCupomFiscalPagamentoCrediario: TLabel;
    LabelCupomFiscalPagamentoCredito: TLabel;
    LabelCupomFiscalPagamentoDebito: TLabel;
    LabelCupomFiscalReimpressaoCupom: TLabel;
    LabelNumeroControleCancelamento: TLabel;
    LabelNumeroControleReimpressaoCupom: TLabel;
    LabelNumeroDocumentoFiscalPagamentoTicketCar: TLabel;
    LabelNumeroSerialPagamentoTicketCar: TLabel;
    LabelPagamentoCreditoComParcelas: TLabel;
    LabelQualViaASerImprimida: TLabel;
    LabelQuantidadeDePagamentosMultiTef: TLabel;
    LabelQuantidadeParcelasPagamentoCrediario: TLabel;
    LabelQuantidadeParcelasPagamentoCredito: TLabel;
    LabelReimprimirUltimoCupom: TLabel;
    LabelSenhaAdministrativaCancelamento: TLabel;
    LabelTipoParcelamentoPagamentoCredito: TLabel;
    LabelUsarMultiTef: TLabel;
    LabelValorPagamentoCrediario: TLabel;
    LabelValorPagamentoCredito: TLabel;
    LabelValorPagamentoDebito: TLabel;
    LabelValorPagamentoTicketCar: TLabel;
    PageControlPrincipal: TPageControl;
    PanelViaASerImprimida: TPanel;
    RadioButtonNaoReimprimirUltimoCupom: TRadioButton;
    RadioButtonNaoUsarMultiTef: TRadioButton;
    RadioButtonPagamentoCreditoSemParcelas: TRadioButton;
    RadioButtonPagamentoCreditoComParcelas: TRadioButton;
    RadioButtonReimprimirUltimoCupom: TRadioButton;
    RadioButtonReimprimirTodasVias: TRadioButton;
    RadioButtonUsarMultiTef: TRadioButton;
    RadioButtonReimprimirViaLoja: TRadioButton;
    RadioButtonReimprimirViaCliente: TRadioButton;
    TabSheet1: TTabSheet;
    TabSheetCancelamento: TTabSheet;
    TabSheetPagamentoCrediario: TTabSheet;
    TabSheetPagamentoCredito: TTabSheet;
    TabSheetPagamentoDebito: TTabSheet;
    TabSheetReimpressaoCupom: TTabSheet;
    TabSheetTicketCar: TTabSheet;
    TMemoResultado: TMemo;
    valorLabel: TLabel;
    valorRecarga: TEdit;

    procedure ButtonExecutarPagamentoTicketCarClick(Sender: TObject);
    procedure dddChange(Sender: TObject);
    procedure numeroChange(Sender: TObject);
    procedure operadoraComboboxChange(Sender: TObject);
    procedure productComboboxChange(Sender: TObject);
    procedure produtosLabelClick(Sender: TObject);


    procedure OnButtonPegarDadosPinpadClick(Sender: TObject);
    procedure OnButtonExecutarCancelamentoClick(Sender: TObject);
    procedure OnButtonExecutarCrediarioClick(Sender: TObject);
    procedure OnButtonExecutarCreditoClick(Sender: TObject);
    procedure OnButtonExecutarDebitoClick(Sender: TObject);
    procedure OnButtonExecutarReimpressaoClick(Sender: TObject);
    procedure OnFloatSpinEditQuantidadeDePagamentosMultiTefChange(Sender: TObject
      );
    procedure OnRadioButtonNaoReimprimirUltimoCupomClick(Sender: TObject);
    procedure OnRadioButtonNaoUsarMultiTefClick(Sender: TObject);
    procedure OnRadioButtonPagamentoCreditoComParcelasClick(Sender: TObject);
    procedure OnRadioButtonPagamentoCreditoSemParcelasClick(Sender: TObject);
    procedure OnRadioButtonReimprimirTodasViasClick(Sender: TObject);
    procedure OnRadioButtonReimprimirUltimoCupomClick(Sender: TObject);
    procedure OnRadioButtonReimprimirViaClienteClick(Sender: TObject);
    procedure OnRadioButtonReimprimirViaLojaClick(Sender: TObject);
    procedure OnRadioButtonUsarMultiTefClick(Sender: TObject);

    procedure AtualizarResultado(mensagem: string);
    procedure AutenticarPdv(cliente: IClienteCappta);
    procedure CarregarOperadoras(cliente: IClienteCappta);
    procedure CriarMensagemErro(mensagem: PChar);
    procedure DesabilitarBotoes();
    procedure DesabilitarControlesMultiTef();
    procedure ExibirDadosOperacaoAprovada(resposta: IRespostaOperacaoAprovada);
    procedure ExibirDadosOperacaoRecusada(resposta: IRespostaOperacaoRecusada);
    procedure ExibirMensagem(mensagem: IMensagem);
    procedure FinalizarPagamento();
    procedure FormCreate(Sender: TObject);
    procedure IniciarMultiCartoes();
    procedure HabilitarBotoes();
    procedure HabilitarControlesMultiTef();
    procedure IterarOperacaoTef();
    procedure RadioButtonInterfaceInvisivelChange(Sender: TObject);
    procedure RadioButtonInterfaceVisivelChange(Sender: TObject);
    procedure recargaClick(Sender: TObject);
    procedure RequisitarParametros(requisicaoParametros: IRequisicaoParametro);
    procedure ResolverTransacaoPendente(respostaTransacaoPendente: IRespostaTransacaoPendente);
    procedure ConfigurarModoIntegracao(exibirInterface: boolean);

    function BuscarNodeXML(XMLAutenticacao: TXMLDocument; nomeNode: string) : TDOMNode;
    function ConcatenarCupons(mensagemAprovada: string; cupom: string) : string;
    function DeveIniciarMultiCartoes() : boolean;
    function FormatarNumeroControle(numeroControle: double) : string;
    function GerarMensagemTransacaoAprovada : string;
    function OperacaoNaoFinalizada(iteracaoTef: IIteracaoTef): boolean;

  private
    chaveAutenticacao: string;
    cliente: IClienteCappta;
    cnpj: string;
    pdv: Int32;
    processandoPagamento: boolean;
    quantidadeCartoes: Int32;
    sessaoMultiTefEmAndamento: boolean;
    tipoVia: Integer;
    produtos: PSafeArray;
  public
    { public declarations }
  end;

var
  Formulario: TFormulario;

const
  INTERVALO_MILISEGUNDOS: Integer = 500;

implementation

{$R *.lfm}

{ TFormulario }

{%Region Método AutenticarPdv}

procedure TFormulario.FormCreate(Sender: TObject);
begin
  cliente := CoClienteCappta.Create;
  tipoVia := 1;
  AutenticarPdv(cliente);
  ConfigurarModoIntegracao(true);
  CarregarOperadoras(cliente);
end;

procedure TFormulario.CarregarOperadoras(cliente: IClienteCappta);
var
   detalhesOperadoras: IDetalhesOperadoras;
   operadoras: PSafeArray;
   operadora: WideString;
   LBound, UBound, Contador: LongInt;
begin
  productCombobox.Enabled:= false;
  valorRecarga.Enabled := false;
  numero.Enabled := false;
  ddd.Enabled := false;
  recarga.Enabled := false;
   detalhesOperadoras := cliente.ObterOperadoras;
   operadoras := detalhesOperadoras.Operadoras;
   SafeArrayGetLBound(operadoras, 1, LBound);
   SafeArrayGetUBound(operadoras, 1, UBound);
   for Contador := LBound to UBound do
   begin
	 SafeArrayGetElement(operadoras, @Contador, operadora);
	 operadoraCombobox.Items.Add(operadora);
   end;
end;

procedure TFormulario.AutenticarPdv(cliente: IClienteCappta);
var
  XMLAutenticacao: TXMLDocument;
  ChaveAutenticacaoNode: TDOMNode;
  CnpjNode: TDOMNode;
  PdvNode: TDOMNode;
  erro: string;
  resultadoAutenticacao: integer;
  valorNumericoCnpj: Int64;
begin
  try
     ReadXMLFile(XMLAutenticacao, 'autenticacao.xml');

     ChaveAutenticacaoNode :=  BuscarNodeXML(XMLAutenticacao, 'chaveAutenticacao');
     chaveAutenticacao := ChaveAutenticacaoNode.FirstChild.NodeValue;

     CnpjNode := BuscarNodeXML(XMLAutenticacao, 'cnpj');
     cnpj := CnpjNode.FirstChild.NodeValue;
     if Length(cnpj) <> 14 then
        raise Exception.Create('O valor passado na tag <cnpj> não tem 14 digitos (use um CNPJ sem pontuação).');
     if TryStrToInt64(cnpj, valorNumericoCnpj) = false then
        raise Exception.Create('O valor passado na tag <cnpj> não é númerico.');

     PdvNode := BuscarNodeXML(XMLAutenticacao, 'pdv');
     pdv := StrtoIntDef(PdvNode.FirstChild.NodeValue, -1);
     if pdv = -1 then
        raise Exception.Create('O valor passado na tag <pdv> não é numérico.');

     resultadoAutenticacao:= cliente.AutenticarPdv(cnpj, pdv, chaveAutenticacao);

     Case resultadoAutenticacao of
       0 : exit;
       1 : ShowMessage('Não autorizado. Por favor, realize a autenticação para utilizar o CapptaGpPlus.');
       2 : ShowMessage('O CapptaGpPlus esta sendo inicializado, tente novamente em alguns instantes.');
       3 : ShowMessage('O formato da requisição recebida pelo CapptaGpPlus é inválido.');
       4 : ShowMessage('Operação cancelada pelo operador.');
       7 : ShowMessage('Ocorreu um erro interno no CapptaGpPlus.');
       8 : ShowMessage('Ocorreu um erro na comunicação entre a CappAPI e o CapptaGpPlus.');

     end;
     Application.Terminate;
  except on ex : Exception do
     begin
       erro := Format('%s%s%s%s%s',
            ['Não foi possível carregar o arquivo "autenticacao.xml".',
            sLineBreak,
            sLineBreak,
            'Erro: ',
            ex.Message]);
       ShowMessage(erro);
       Application.Terminate;
     end;
  end;
end;

function TFormulario.BuscarNodeXML(XMLAutenticacao: TXMLDocument; nomeNode: string) : TDOMNode;
var node : TDOMNode;
begin
   node := XMLAutenticacao.DocumentElement.FindNode(nomeNode);

   if node = nil then
      raise Exception.Create(Format('Não existe a tag <%s>.', [nomeNode]));
   if node.FirstChild = nil then
      raise Exception.Create(Format('A tag <%s> está sem valor definido.', [nomeNode]));

   Result := node;
end;

{%EndRegion}

{%Region Métodos de Pagamento}

procedure TFormulario.ButtonExecutarPagamentoTicketCarClick(Sender: TObject);
var
   detalhesPessoaFisica: IDetalhesPagamentoTicketCarPessoaFisica;
   valor: double;
begin
     valor := FloatSpinEditValorPagamentoTicketCar.Value;

     detalhesPessoaFisica := CoDetalhesPagamentoTicketCarPessoaFisica.Create;
     detalhesPessoaFisica.Set_NumeroReciboFiscal(EditNumeroDocumentoFiscalTicketCar.Text);
     detalhesPessoaFisica.Set_NumeroSerialECF(EditNumeroSerialTicketCar.Text);
   
     cliente.PagamentoTicketCarPessoaFisica(valor, detalhesPessoaFisica);

     processandoPagamento := true;
     IterarOperacaoTef();
end;

procedure TFormulario.dddChange(Sender: TObject);
begin
  recarga.Enabled:= true;
end;

procedure TFormulario.operadoraComboboxChange(Sender: TObject);
var
   detalhesProdutos: IDetalhesProdutosOperadoras;
   produto: IProdutoRecarga;
   LBound, UBound, Contador: LongInt;
begin
     productCombobox.Enabled:= true;
     detalhesProdutos := cliente.ObterProdutosOperadoras(operadoraCombobox.text);
     productCombobox.Text := '';
     produtos := detalhesProdutos.Produtos;
     SafeArrayGetLBound(produtos, 1, LBound);
     SafeArrayGetUBound(produtos, 1, UBound);
     productCombobox.Items.Clear;
     for Contador := LBound to UBound do
     begin
	 SafeArrayGetElement(produtos, @Contador, produto);
	 productCombobox.Items.Add(produto.Name);
     end;
end;

procedure TFormulario.productComboboxChange(Sender: TObject);
var
   produto: IProdutoRecarga;
   LBound, UBound, Contador: LongInt;
begin
   SafeArrayGetLBound(produtos, 1, LBound);
   SafeArrayGetUBound(produtos, 1, UBound);
   numero.Enabled:= true;
   for Contador := LBound to UBound do
   begin
        SafeArrayGetElement(produtos, @Contador, produto);
        IF produto.Name =  productCombobox.Text
        then valorRecarga.Text:=  FloatToStrF(produto.Price, ffFixed,4,0);
   end;
end;

procedure TFormulario.produtosLabelClick(Sender: TObject);
begin

end;

procedure TFormulario.numeroChange(Sender: TObject);
begin
  ddd.Enabled:= true;
end;

procedure TFormulario.OnButtonExecutarDebitoClick(Sender: TObject);
var
  valor: double;
  exibirInterface: boolean;
  configs: Configuracoes;
begin

  valor := FloatSpinEditValorPagamentoDebito.Value;

  if DeveIniciarMultiCartoes() then
  begin
     IniciarMultiCartoes();
  end;

  cliente.PagamentoDebito(valor);

  processandoPagamento := true;
  IterarOperacaoTef();
end;

procedure TFormulario.OnButtonExecutarCreditoClick(Sender: TObject);
var
  detalhes: DetalhesCredito;
  quantidadeParcelas: integer;
  tipoParcelamento: integer;
  transacaoParcelada: boolean;
  valor: double;
begin
  quantidadeParcelas := Trunc(FloatSpinEditQuantidadeParcelasPagamentoCredito.Value);
  tipoParcelamento := ComboBoxTipoParcelamentoPagamentoCredito.ItemIndex + 1;
  transacaoParcelada := RadioButtonPagamentoCreditoComParcelas.Checked;
  valor := FloatSpinEditValorPagamentoCredito.Value;

  detalhes := CoDetalhesCredito.Create;
  detalhes.Set_QuantidadeParcelas(quantidadeParcelas);
  detalhes.Set_TransacaoParcelada(transacaoParcelada);
  detalhes.Set_TipoParcelamento(tipoParcelamento);

  if (DeveIniciarMultiCartoes()) then
  begin
     IniciarMultiCartoes();
  end;

  cliente.PagamentoCredito(valor, detalhes);

  processandoPagamento := true;
  IterarOperacaoTef();
end;

procedure TFormulario.OnButtonExecutarCrediarioClick(Sender: TObject);
var
  detalhes: DetalhesCrediario;
  quantidadeParcelas: integer;
  valor: double;
begin
  quantidadeParcelas := Trunc(FloatSpinEditQuantidadeParcelasPagamentoCrediario.Value);
  valor := FloatSpinEditValorPagamentoCrediario.Value;

  detalhes := CoDetalhesCrediario.Create;
  detalhes.Set_QuantidadeParcelas(quantidadeParcelas);

  if (DeveIniciarMultiCartoes()) then
  begin
     IniciarMultiCartoes();
  end;

  cliente.PagamentoCrediario(valor, detalhes);

  processandoPagamento := true;
  IterarOperacaoTef();
end;

function TFormulario.DeveIniciarMultiCartoes() : boolean;
begin
     Result:= (sessaoMultiTefEmAndamento = false) and RadioButtonUsarMultiTef.Checked;
end;

procedure TFormulario.IniciarMultiCartoes();
begin
  quantidadeCartoes:= Trunc(FloatSpinEditQuantidadeDePagamentosMultiTef.Value);
  sessaoMultiTefEmAndamento:= true;
  cliente.IniciarMultiCartoes(quantidadeCartoes);
end;

{%EndRegion}

{%Region Métodos Administrativos}
procedure TFormulario.ConfigurarModoIntegracao(exibirInterface: boolean);
var
    configs: Configuracoes;
begin
     configs := CoConfiguracoes.Create;
     configs.Set_ExibirInterface(exibirInterface);
     cliente.Configurar(configs);
end;

procedure TFormulario.OnButtonExecutarReimpressaoClick(Sender: TObject);
var
  reimprimirUltimoCupom: boolean;
  numeroControle: string;
begin
  if sessaoMultiTefEmAndamento = true then
  begin
     CriarMensagemErro('Não é possível reimprimir um cupom com uma sessão multitef em andamento.'); exit;
  end;

  reimprimirUltimoCupom := RadioButtonReimprimirUltimoCupom.Checked;

  if (reimprimirUltimoCupom) then
  begin
     cliente.ReimprimirUltimoCupom(tipoVia)
  end
  else
  begin
       numeroControle := FormatarNumeroControle(StrToInt64(TextEditNumeroControleReimpressaoCupom.Text));
       cliente.ReimprimirCupom(numeroControle, tipoVia);
  end;

  processandoPagamento := false;
  IterarOperacaoTef();
end;

procedure TFormulario.OnButtonExecutarCancelamentoClick(Sender: TObject);
var
  numeroControle: string;
  senhaAdministrativa: string;
begin
  if sessaoMultiTefEmAndamento = true then
  begin
     CriarMensagemErro('Não é possível cancelar um pagamento com uma sessão multitef em andamento.'); exit;
  end;

  numeroControle := FormatarNumeroControle(StrToInt64(TextEditNumeroControleCancelamento.Text));
  senhaAdministrativa:= EditSenhaAdministrativaCancelamento.Text;

  if Length(senhaAdministrativa) = 0 then
  begin
     CriarMensagemErro('A senha administrativa não pode ser vazia.');
     exit;
  end;

  cliente.CancelarPagamento(senhaAdministrativa, numeroControle);

  processandoPagamento := false;
  IterarOperacaoTef();
end;

procedure TFormulario.OnButtonPegarDadosPinpadClick(Sender: TObject);
var
  tipoInformacaoPinpad: integer;
  requisicaoPinpad: RequisicaoInformacaoPinpad;
  resultado: string;
begin
  tipoInformacaoPinpad := ComboBoxTipoInformacaoPinpad.ItemIndex + 1;

  requisicaoPinpad := CoRequisicaoInformacaoPinpad.Create();
  requisicaoPinpad.Set_TipoInformacaoPinpad(tipoInformacaoPinpad);

  resultado := cliente.SolicitarInformacoesPinpad(requisicaoPinpad);

  AtualizarResultado(resultado);
end;

procedure TFormulario.CriarMensagemErro(mensagem: PChar);
begin
     Application.MessageBox(mensagem, 'Erro', MB_OK);
end;

function TFormulario.FormatarNumeroControle(numeroControle: double) : string;
var numeroControleTexto: string;
begin
  numeroControleTexto := FloatToStr(numeroControle);
  numeroControleTexto := ReplaceStr(PadLeft(numeroControleTexto, 11), ' ', '0');

  Result:= numeroControleTexto;
end;

{%EndRegion}

{%Region Método IterarOperacaoTef}

procedure TFormulario.IterarOperacaoTef();
var
  iteracaoTef: IIteracaoTef;
begin
  if RadioButtonUsarMultiTef.Enabled then DesabilitarControlesMultiTef();
  DesabilitarBotoes();

  Repeat

    iteracaoTef := cliente.IterarOperacaoTef();

    if iteracaoTef is IMensagem then
    begin
       ExibirMensagem(iteracaoTef as IMensagem);
       Sleep(INTERVALO_MILISEGUNDOS);
    end;

    if iteracaoTef is IRequisicaoParametro then RequisitarParametros(iteracaoTef as IRequisicaoParametro);
    if iteracaoTef is IRespostaTransacaoPendente then ResolverTransacaoPendente(iteracaoTef as IRespostaTransacaoPendente);

    if iteracaoTef is IRespostaOperacaoRecusada then ExibirDadosOperacaoRecusada(iteracaoTef as IRespostaOperacaoRecusada);
    if iteracaoTef is IRespostaOperacaoAprovada then
    begin
       ExibirDadosOperacaoAprovada(iteracaoTef as IRespostaOperacaoAprovada);
       FinalizarPagamento();
    end;

    Until OperacaoNaoFinalizada(iteracaoTef) = false;

  if (sessaoMultiTefEmAndamento = false) or (iteracaoTef is IRespostaOperacaoRecusada) then HabilitarControlesMultiTef();
  HabilitarBotoes();
end;

procedure TFormulario.DesabilitarControlesMultiTef();
begin
  RadioButtonUsarMultiTef.Enabled:= false;
  RadioButtonNaoUsarMultiTef.Enabled:= false;
  FloatSpinEditQuantidadeDePagamentosMultiTef.Enabled:= false;
end;

procedure TFormulario.DesabilitarBotoes();
begin
  ButtonExecutarCancelamento.Enabled:= false;
  ButtonExecutarCrediario.Enabled:= false;
  ButtonExecutarCredito.Enabled:= false;
  ButtonExecutarDebito.Enabled:= false;
  ButtonExecutarReimpressao.Enabled:= false;
end;

procedure TFormulario.ExibirMensagem(mensagem: IMensagem);
begin
  AtualizarResultado(mensagem.Descricao);
end;

procedure TFormulario.RequisitarParametros(requisicaoParametros: IRequisicaoParametro);
var
  parametro: string;
  mensagemConvertida: string;
  acao: Int32;
begin
    mensagemConvertida := AnsiToUtf8(requisicaoParametros.Get_Mensagem);
    parametro := InputBox('Sample API COM', mensagemConvertida, '');

    if Length(parametro) = 0 then
    begin
       acao := 2;
       parametro := ' ';
    end
    else begin acao := 1; end;

    cliente.EnviarParametro(parametro, acao);
end;

procedure TFormulario.ResolverTransacaoPendente(respostaTransacaoPendente: IRespostaTransacaoPendente);
var
  parametro: string;
  mensagemConvertida: string;
  acao: Int32;
  lBound, uBound, contador: LongInt;
  transacaoPendente: ITransacaoPendente;
begin
     mensagemConvertida := AnsiToUtf8(respostaTransacaoPendente.Get_Mensagem);

     SafeArrayGetLBound(respostaTransacaoPendente.Get_ListaTransacoesPendentes, 1, lBound);
     SafeArrayGetUBound(respostaTransacaoPendente.Get_ListaTransacoesPendentes, 1, uBound);
     for contador := lBound to uBound do
      begin
           SafeArrayGetElement(respostaTransacaoPendente.Get_ListaTransacoesPendentes, @Contador, transacaoPendente);
           mensagemConvertida := Concat(mensagemConvertida, sLineBreak, 'Número de Controle: ', transacaoPendente.Get_numeroControle);
           mensagemConvertida := Concat(mensagemConvertida, sLineBreak, 'Bandeira: ', transacaoPendente.Get_NomeBandeiraCartao);
           mensagemConvertida := Concat(mensagemConvertida, sLineBreak, 'Adquirente: ', transacaoPendente.Get_NomeAdquirente);
           mensagemConvertida := Concat(mensagemConvertida, sLineBreak, 'Valor: ', FloatToStr(transacaoPendente.Get_valor));
           mensagemConvertida := Concat(mensagemConvertida, sLineBreak, 'Data: ', DateTimeToStr(transacaoPendente.Get_DataHoraAutorizacao));
      end;

     parametro := InputBox('Sample API COM', mensagemConvertida, '');

     if Length(parametro) = 0 then
     begin
       acao := 2;
       parametro := ' ';
     end
     else begin acao := 1; end;

    cliente.EnviarParametro(parametro, acao);
end;

procedure TFormulario.ExibirDadosOperacaoRecusada(resposta: IRespostaOperacaoRecusada);
var textoCodigoAnsi: string;
begin
  if sessaoMultiTefEmAndamento then
  begin
       sessaoMultiTefEmAndamento := false;
       processandoPagamento := false;
       quantidadeCartoes := 0;
       RadioButtonNaoUsarMultiTef.Checked := true;
  end;

  textoCodigoAnsi := Utf8ToAnsi('Código');
  AtualizarResultado(Format('%s: %d%s%s', [textoCodigoAnsi, resposta.Get_CodigoMotivo, sLineBreak, resposta.Get_Motivo]))
end;

procedure TFormulario.ExibirDadosOperacaoAprovada(resposta: IRespostaOperacaoAprovada);
var mensagemAprovada: string = '';
begin

   if (resposta.Get_CupomCliente <> null) then mensagemAprovada := Format('%s%s',[ConcatenarCupons(mensagemAprovada, resposta.Get_CupomCliente), sLineBreak]);
   if (resposta.Get_CupomLojista <> null) then mensagemAprovada := ConcatenarCupons(mensagemAprovada, resposta.Get_CupomLojista);
   if (resposta.Get_CupomReduzido <> null) then mensagemAprovada := ConcatenarCupons(mensagemAprovada, resposta.Get_CupomReduzido);

   AtualizarResultado(ReplaceStr(mensagemAprovada, '"', ''));
end;

function TFormulario.ConcatenarCupons(mensagemAprovada: string; cupom: string) : string;
begin
  Result:= Format('%s%s%s', [mensagemAprovada, ReplaceStr(cupom, '"', ''), sLineBreak]);
end;

procedure TFormulario.AtualizarResultado(mensagem: string);
begin
  TMemoResultado.Text:= AnsiToUtf8(mensagem);
  TMemoResultado.Repaint;
end;

procedure TFormulario.FinalizarPagamento();
var botaoSelecionado: Integer = 0;
var mensagem: string;
begin
  if processandoPagamento = false then exit;
  if sessaoMultiTefEmAndamento then
  begin
     quantidadeCartoes:= quantidadeCartoes - 1;
     if quantidadeCartoes > 0 then exit;
  end;

  mensagem := GerarMensagemTransacaoAprovada;

  processandoPagamento := false;
  sessaoMultiTefEmAndamento := false;

  botaoSelecionado := MessageDlg(mensagem, mtConfirmation, mbOKCancel, 0);
  if botaoSelecionado = mrOK then cliente.ConfirmarPagamentos()
  else cliente.DesfazerPagamentos();

end;

function TFormulario.GerarMensagemTransacaoAprovada : string;
var
  trecho1: string = 'ão';
  trecho2: string = '';
  mensagem: string = 'Transaç%s Aprovada%s!!! %s Clique em "OK" para confirmar a%s transaç%s e "Cancelar" para desfazê-la%s.';
begin
  if sessaoMultiTefEmAndamento = true then
  begin
     trecho1 := 'ões';
     trecho2 := 's'
  end;

  Result := Format(mensagem, [trecho1, trecho2, sLineBreak, trecho2, trecho1, trecho2]);
end;

function TFormulario.OperacaoNaoFinalizada(iteracaoTef: IIteracaoTef): boolean;
var tipoIteracao: integer;
begin
  tipoIteracao := iteracaoTef.Get_TipoIteracao;
  Result:= (tipoIteracao <> 1) and (tipoIteracao <> 2);
end;

procedure TFormulario.HabilitarControlesMultiTef();
begin
  RadioButtonUsarMultiTef.Enabled:= true;
  RadioButtonNaoUsarMultiTef.Enabled:= true;
  FloatSpinEditQuantidadeDePagamentosMultiTef.Enabled:= true;
end;

procedure TFormulario.HabilitarBotoes();
begin
  ButtonExecutarCancelamento.Enabled:= true;
  ButtonExecutarCrediario.Enabled:= true;
  ButtonExecutarCredito.Enabled:= true;
  ButtonExecutarDebito.Enabled:= true;
  ButtonExecutarReimpressao.Enabled:= true;
end;

{%EndRegion}

{%Region Eventos}


procedure TFormulario.RadioButtonInterfaceInvisivelChange(Sender: TObject);
begin
  if(RadioButtonInterfaceVisivel.Checked = false) then
  begin
     exit;
  end;
     ConfigurarModoIntegracao(true);
end;

procedure TFormulario.RadioButtonInterfaceVisivelChange(Sender: TObject);
begin
  if(RadioButtonInterfaceInvisivel.Checked = false) then
  begin
     exit;
  end;
     ConfigurarModoIntegracao(false);
end;

procedure TFormulario.recargaClick(Sender: TObject);
var
  detalhesRecarga: IDetalhesRecarga;
   produto: IProdutoRecarga;
   response: IRespostaRecarga;
   iteracao: IIteracaoTef;
   LBound, UBound, Contador: LongInt;
begin
  detalhesRecarga := CoDetalhesRecarga.Create;
  detalhesRecarga.Celular:= StrToInt64(numero.Text);
  detalhesRecarga.Ddd:= strtoint(ddd.Text);
  detalhesRecarga.ValorRecarga:= strtofloat(valorRecarga.Text);
  SafeArrayGetLBound(produtos, 1, LBound);
   SafeArrayGetUBound(produtos, 1, UBound);
   for Contador := LBound to UBound do
   begin
        SafeArrayGetElement(produtos, @Contador, produto);
        IF produto.Name =  productCombobox.Text
        then detalhesRecarga.Produto := produto;
   end;
   try
      iteracao:= cliente.RecargaCelular(detalhesRecarga);
      if iteracao is IRespostaRecarga then
      begin
           response := (iteracao as IRespostaRecarga);
           AtualizarResultado(response.CupomCliente + response.CupomLojista);
      end;
   finally
   end;
end;

procedure TFormulario.OnRadioButtonUsarMultiTefClick(Sender: TObject);
begin
  if RadioButtonUsarMultiTef.Checked = false then exit;

  LabelQuantidadeDePagamentosMultiTef.Show();
  FloatSpinEditQuantidadeDePagamentosMultiTef.Show();
end;

procedure TFormulario.OnRadioButtonNaoUsarMultiTefClick(Sender: TObject);
begin
  if RadioButtonNaoUsarMultiTef.Checked = false then exit;

  sessaoMultiTefEmAndamento:= false;
  LabelQuantidadeDePagamentosMultiTef.Hide();
  FloatSpinEditQuantidadeDePagamentosMultiTef.Hide();
  cliente.DesfazerPagamentos();
end;

procedure TFormulario.OnFloatSpinEditQuantidadeDePagamentosMultiTefChange(
  Sender: TObject);
begin
  quantidadeCartoes:= Trunc(FloatSpinEditQuantidadeDePagamentosMultiTef.Value);
end;

procedure TFormulario.OnRadioButtonPagamentoCreditoComParcelasClick(Sender: TObject);
begin
  LabelTipoParcelamentoPagamentoCredito.Show();
  ComboBoxTipoParcelamentoPagamentoCredito.Show();
  LabelQuantidadeParcelasPagamentoCredito.Show();
  FloatSpinEditQuantidadeParcelasPagamentoCredito.Show();
end;

procedure TFormulario.OnRadioButtonPagamentoCreditoSemParcelasClick(Sender: TObject);
begin
  LabelTipoParcelamentoPagamentoCredito.Hide();
  ComboBoxTipoParcelamentoPagamentoCredito.Hide();
  LabelQuantidadeParcelasPagamentoCredito.Hide();
  FloatSpinEditQuantidadeParcelasPagamentoCredito.Hide();
end;

procedure TFormulario.OnRadioButtonReimprimirUltimoCupomClick(Sender: TObject);
begin
  LabelNumeroControleReimpressaoCupom.Hide();
  TextEditNumeroControleReimpressaoCupom.Hide();
end;

procedure TFormulario.OnRadioButtonNaoReimprimirUltimoCupomClick(Sender: TObject);
begin
  LabelNumeroControleReimpressaoCupom.Show();
  TextEditNumeroControleReimpressaoCupom.Show();
end;

procedure TFormulario.OnRadioButtonReimprimirTodasViasClick(Sender: TObject);
begin
  tipoVia := 1;
end;

procedure TFormulario.OnRadioButtonReimprimirViaLojaClick(Sender: TObject);
begin
  tipoVia := 3;
end;

procedure TFormulario.OnRadioButtonReimprimirViaClienteClick(Sender: TObject);
begin
  tipoVia := 2;
end;

{%EndRegion}

end.
