Unit Cappta_Gp_Api_Com_1_0_TLB;

//  Imported Cappta_Gp_Api_Com on 11/04/2017 09:51:02 from C:\Users\newton.rocha\Cappta.Gp.Setup\Cappta.GerenciadorPadrao.Setup\Lib\Cappta.Gp.Api.Com.tlb

{$mode delphi}{$H+}

interface

//  Warning: 'PSafeArray' not automatable in IDetalhesOperadoras.Operadoras
//  Warning: 'PSafeArray' not automatable in IDetalhesProdutosOperadoras.Produtos
//  Warning: 'PSafeArray' not automatable in IRespostaTransacaoPendente.ListaTransacoesPendentes
//  Warning: 'PSafeArray' not automatable in IDetalhesPagamentoTicketCarGestaoFrota.ListaProdutos
//  Warning: 'PSafeArray' not automatable in IRespostaProdutoTicketCar.ListaProdutos
Uses
  Windows,ActiveX,Classes,Variants;
Const
  Cappta_Gp_Api_ComMajorVersion = 1;
  Cappta_Gp_Api_ComMinorVersion = 0;
  Cappta_Gp_Api_ComLCID = 0;
  LIBID_Cappta_Gp_Api_Com : TGUID = '{E84CFD1A-5C62-4615-A523-AE808429D195}';

  CLASS_ClienteCappta : TGUID = '{558C9FB7-207A-4F17-87BA-CAC733D25BC3}';
  IID_IResponseSerializer : TGUID = '{CA4AD0C3-ECC8-3080-84C2-A27CAE4B4DFA}';
  IID_ISystemProcess : TGUID = '{990ECE67-68F0-3864-9493-10594FF4A575}';
  CLASS_ProcessWrapper : TGUID = '{F10204B9-03CF-3BD1-8DA6-7D4D27A732D0}';
  IID_IClienteCappta : TGUID = '{B7EAC4F5-BAB7-4371-9BAC-A962CF737EDD}';
  CLASS_NamedPipeClientWrapper : TGUID = '{B50270F1-48AD-37CF-8B46-33117170F458}';
  CLASS_ServerMessageEventArgs : TGUID = '{4D5DF82A-F5A6-35CF-A497-AAAFAA277246}';
  CLASS_DetalhesOperadoras : TGUID = '{ED43EE8B-84BC-45C8-A61A-85EE738F96B3}';
  CLASS_DetalhesProdutosOperadoras : TGUID = '{F7FF46CE-0437-49F2-95EE-2C8DA291F55E}';
  CLASS_DetalhesRecarga : TGUID = '{4EFD6042-100F-41D7-A744-D91E8D3D05B0}';
  IID_IDetalhesOperadoras : TGUID = '{6C656481-2AF9-4533-A7B2-4AF80B5DCFCA}';
  IID_IDetalhesProdutosOperadoras : TGUID = '{13DF9713-8A2E-438F-8BA8-0C468E16FC12}';
  IID_IDetalhesRecarga : TGUID = '{7293D495-C2BF-49DA-99C2-9F7D01F90C33}';
  IID_IProdutoRecarga : TGUID = '{8F598C03-4324-4932-851C-64EB8899AB30}';
  IID_IRespostaInformacaoPinpad : TGUID = '{2ED6D3A7-733D-456D-8886-4A7EE8483784}';
  IID_IRequisicaoInformacaoPinpad : TGUID = '{7A327E30-1CC7-449D-BD86-0ECF56A46680}';
  IID_IRespostaRecarga : TGUID = '{EE2C8ECD-CE1A-4904-9E48-36BFF9116B01}';
  IID_ITransacaoPendente : TGUID = '{BD569E64-0F02-46F2-A8C0-6581F963B32A}';
  CLASS_ProdutoRecarga : TGUID = '{C147FFA1-5C8F-465F-B10C-BF4F3D897F80}';
  CLASS_RespostaInformacaoPinpad : TGUID = '{8ED58B1E-9F32-46A3-866D-2BF9305CE308}';
  CLASS_RequisicaoInformacaoPinpad : TGUID = '{C2DBA4EC-A426-4E21-9190-E7785DDA6422}';
  CLASS_Configuracoes : TGUID = '{0B40CBAD-5E0E-4F3D-B117-541232E9AF64}';
  CLASS_RespostaRecarga : TGUID = '{6D6AEE29-A29E-4F78-9CA6-0BB2AEA5F8F8}';
  IID_IConfiguracoes : TGUID = '{0C987364-605C-423A-887E-E368A12A0C81}';
  CLASS_RespostaTransacaoPendente : TGUID = '{ACF93A9B-923D-45D3-9F6E-2C8FDCEEF7CE}';
  IID_IRespostaTransacaoPendente : TGUID = '{013B67B2-5369-4D45-B3D1-BE6DFC9B969A}';
  CLASS_TransacaoPendente : TGUID = '{4565C580-D5A7-4A6A-9CC2-5D0CBE159FA0}';
  CLASS_DetalhesPagamentoTicketCarPessoaFisica : TGUID = '{B19BC291-2C96-4062-91EF-1E6AF84AB9CA}';
  CLASS_DetalhesPagamentoTicketCarGestaoFrota : TGUID = '{FEAF74EE-2AC7-46BF-8830-2FD877E264AA}';
  IID_IDetalhesPagamentoTicketCarPessoaFisica : TGUID = '{9FC96AB8-65CB-414C-86F9-D6BC5EF0E62C}';
  IID_IDetalhesPagamentoTicketCarGestaoFrota : TGUID = '{D41FC4D2-7E47-4451-B1B2-5C030AD950A7}';
  IID_IIteracaoTef : TGUID = '{44B8B0E0-907B-405A-B638-60A25F1F2954}';
  IID_IMensagem : TGUID = '{C4410200-F363-4FFA-8D50-C3475CBAB4A6}';
  IID_IProdutoTicketCar : TGUID = '{391BB57A-269E-4B18-959D-2C347A0EC352}';
  IID_IRequisicaoParametro : TGUID = '{DBAB4B16-D117-4C3D-B8E2-AB3E11640AEA}';
  IID_IRequisicaoProdutoTicketCar : TGUID = '{4D84F541-0A06-4D35-9948-61C2FC8A2E1D}';
  IID_IRespostaOperacaoAprovada : TGUID = '{77EF0C8B-2957-40B0-8519-E49DC08F11DA}';
  IID_IRespostaOperacaoRecusada : TGUID = '{FCE2A076-A595-41F9-BBE9-50AEC491BC94}';
  IID_IRespostaProdutoTicketCar : TGUID = '{3687FED3-4266-4677-A6B3-35FEF3C3DE6E}';
  CLASS_MapTicketCarProductsResponse : TGUID = '{885CBF1E-AA7A-3AAD-8C4A-4BA005F408EB}';
  CLASS_Mensagem : TGUID = '{675E0D27-AF05-4C30-8FD6-8EF950C92122}';
  CLASS_ProdutoTicketCar : TGUID = '{316F0BF9-16EB-40F6-8659-C936285B69FC}';
  CLASS_RequisicaoProdutoTicketCar : TGUID = '{8612DBE9-0B89-4BED-A855-095AF5170208}';
  CLASS_RespostaProdutoTicketCar : TGUID = '{6ED5DBFC-7585-44AA-BB3F-999F46C194A6}';
  CLASS_RequisicaoParametro : TGUID = '{603C49A8-3075-46A1-96D9-36FDE425B8DB}';
  CLASS_RespostaOperacaoAprovada : TGUID = '{9D0865CE-CBC1-41BF-9442-969107A33F6E}';
  CLASS_RespostaOperacaoRecusada : TGUID = '{804AD494-D7CF-4BB6-9814-0B65E90E0916}';
  CLASS_DetalhesCrediario : TGUID = '{BA468712-754C-42A3-8609-8A6BE4AE39E9}';
  CLASS_DetalhesCredito : TGUID = '{A9CB4E2F-8B2C-4379-9DBF-7A3642E61AA9}';
  IID_IDetalhesCrediario : TGUID = '{AFF482ED-60D9-437D-8848-10D690B72FAD}';
  IID_IDetalhesCredito : TGUID = '{39FA5108-EF0F-457B-A003-54460A297824}';
  IID__ProcessWrapper : TGUID = '{CA70CE91-D1A6-3E89-A359-67876C0638E7}';
  IID__NamedPipeClientWrapper : TGUID = '{AF58DB95-7BDB-34C2-B3D0-134CB1CEEBE2}';
  IID__ServerMessageEventArgs : TGUID = '{344104C0-F1B1-38A5-8585-FED8066317B7}';
  IID__MapTicketCarProductsResponse : TGUID = '{E175F731-625B-3691-8AB3-55BEBF1F7E31}';

//Enums

Type
  TipoDesconto =LongWord;
Const
  TipoDesconto_Dinheiro = $0000000000000000;
  TipoDesconto_Porcentagem = $0000000000000001;
//Forward declarations

Type
 IResponseSerializer = interface;
 IResponseSerializerDisp = dispinterface;
 ISystemProcess = interface;
 ISystemProcessDisp = dispinterface;
 IClienteCappta = interface;
 IClienteCapptaDisp = dispinterface;
 IDetalhesOperadoras = interface;
 IDetalhesOperadorasDisp = dispinterface;
 IDetalhesProdutosOperadoras = interface;
 IDetalhesProdutosOperadorasDisp = dispinterface;
 IDetalhesRecarga = interface;
 IDetalhesRecargaDisp = dispinterface;
 IProdutoRecarga = interface;
 IProdutoRecargaDisp = dispinterface;
 IRespostaInformacaoPinpad = interface;
 IRespostaInformacaoPinpadDisp = dispinterface;
 IRequisicaoInformacaoPinpad = interface;
 IRequisicaoInformacaoPinpadDisp = dispinterface;
 IRespostaRecarga = interface;
 IRespostaRecargaDisp = dispinterface;
 ITransacaoPendente = interface;
 ITransacaoPendenteDisp = dispinterface;
 IConfiguracoes = interface;
 IConfiguracoesDisp = dispinterface;
 IRespostaTransacaoPendente = interface;
 IRespostaTransacaoPendenteDisp = dispinterface;
 IDetalhesPagamentoTicketCarPessoaFisica = interface;
 IDetalhesPagamentoTicketCarPessoaFisicaDisp = dispinterface;
 IDetalhesPagamentoTicketCarGestaoFrota = interface;
 IDetalhesPagamentoTicketCarGestaoFrotaDisp = dispinterface;
 IIteracaoTef = interface;
 IIteracaoTefDisp = dispinterface;
 IMensagem = interface;
 IMensagemDisp = dispinterface;
 IProdutoTicketCar = interface;
 IProdutoTicketCarDisp = dispinterface;
 IRequisicaoParametro = interface;
 IRequisicaoParametroDisp = dispinterface;
 IRequisicaoProdutoTicketCar = interface;
 IRequisicaoProdutoTicketCarDisp = dispinterface;
 IRespostaOperacaoAprovada = interface;
 IRespostaOperacaoAprovadaDisp = dispinterface;
 IRespostaOperacaoRecusada = interface;
 IRespostaOperacaoRecusadaDisp = dispinterface;
 IRespostaProdutoTicketCar = interface;
 IRespostaProdutoTicketCarDisp = dispinterface;
 IDetalhesCrediario = interface;
 IDetalhesCrediarioDisp = dispinterface;
 IDetalhesCredito = interface;
 IDetalhesCreditoDisp = dispinterface;
 _ProcessWrapper = interface;
 _ProcessWrapperDisp = dispinterface;
 _NamedPipeClientWrapper = interface;
 _NamedPipeClientWrapperDisp = dispinterface;
 _ServerMessageEventArgs = interface;
 _ServerMessageEventArgsDisp = dispinterface;
 _MapTicketCarProductsResponse = interface;
 _MapTicketCarProductsResponseDisp = dispinterface;

//Map CoClass to its default interface

 ClienteCappta = IClienteCappta;
 ProcessWrapper = _ProcessWrapper;
 NamedPipeClientWrapper = _NamedPipeClientWrapper;
 ServerMessageEventArgs = _ServerMessageEventArgs;
 DetalhesOperadoras = IDetalhesOperadoras;
 DetalhesProdutosOperadoras = IDetalhesProdutosOperadoras;
 DetalhesRecarga = IDetalhesRecarga;
 ProdutoRecarga = IProdutoRecarga;
 RespostaInformacaoPinpad = IRespostaInformacaoPinpad;
 RequisicaoInformacaoPinpad = IRequisicaoInformacaoPinpad;
 Configuracoes = IConfiguracoes;
 RespostaRecarga = IRespostaRecarga;
 RespostaTransacaoPendente = IRespostaTransacaoPendente;
 TransacaoPendente = ITransacaoPendente;
 DetalhesPagamentoTicketCarPessoaFisica = IDetalhesPagamentoTicketCarPessoaFisica;
 DetalhesPagamentoTicketCarGestaoFrota = IDetalhesPagamentoTicketCarGestaoFrota;
 MapTicketCarProductsResponse = _MapTicketCarProductsResponse;
 Mensagem = IMensagem;
 ProdutoTicketCar = IProdutoTicketCar;
 RequisicaoProdutoTicketCar = IRequisicaoProdutoTicketCar;
 RespostaProdutoTicketCar = IRespostaProdutoTicketCar;
 RequisicaoParametro = IRequisicaoParametro;
 RespostaOperacaoAprovada = IRespostaOperacaoAprovada;
 RespostaOperacaoRecusada = IRespostaOperacaoRecusada;
 DetalhesCrediario = IDetalhesCrediario;
 DetalhesCredito = IDetalhesCredito;

//records, unions, aliases


//interface declarations

// IResponseSerializer : 

 IResponseSerializer = interface(IDispatch)
   ['{CA4AD0C3-ECC8-3080-84C2-A27CAE4B4DFA}']
    // Deserialize :  
   function Deserialize(responseMessage:WideString):IIteracaoTef;safecall;
  end;


// IResponseSerializer : 

 IResponseSerializerDisp = dispinterface
   ['{CA4AD0C3-ECC8-3080-84C2-A27CAE4B4DFA}']
    // Deserialize :  
   function Deserialize(responseMessage:WideString):IIteracaoTef;dispid 1610743808;
  end;


// ISystemProcess : 

 ISystemProcess = interface(IDispatch)
   ['{990ECE67-68F0-3864-9493-10594FF4A575}']
    // CapptaGPIsWorking :  
   function CapptaGPIsWorking:WordBool;safecall;
  end;


// ISystemProcess : 

 ISystemProcessDisp = dispinterface
   ['{990ECE67-68F0-3864-9493-10594FF4A575}']
    // CapptaGPIsWorking :  
   function CapptaGPIsWorking:WordBool;dispid 1610743808;
  end;


// IClienteCappta : 

 IClienteCappta = interface(IDispatch)
   ['{B7EAC4F5-BAB7-4371-9BAC-A962CF737EDD}']
    // CancelarPagamento :  
   function CancelarPagamento(senhaAdministrativa:WideString;numeroControle:WideString):Integer;safecall;
    // PagamentoDebito :  
   function PagamentoDebito(valor:Double):Integer;safecall;
    // PagamentoCrediario :  
   function PagamentoCrediario(valor:Double;detalhes:IDetalhesCrediario):Integer;safecall;
    // PagamentoCredito :  
   function PagamentoCredito(valor:Double;detalhes:IDetalhesCredito):Integer;safecall;
    // ReimprimirCupom :  
   function ReimprimirCupom(numeroControle:WideString;tipoVia:Integer):Integer;safecall;
    // ReimprimirUltimoCupom :  
   function ReimprimirUltimoCupom(tipoVia:Integer):Integer;safecall;
    // IniciarMultiCartoes :  
   function IniciarMultiCartoes(quantidadePagamentos:Integer):Integer;safecall;
    // ConfirmarPagamentos :  
   function ConfirmarPagamentos:Integer;safecall;
    // DesfazerPagamentos :  
   function DesfazerPagamentos:Integer;safecall;
    // EnviarParametro :  
   function EnviarParametro(parametro:WideString;acao:Integer):Integer;safecall;
    // AutenticarPdv :  
   function AutenticarPdv(cnpj:WideString;pdv:Integer;chaveAutenticacao:WideString):Integer;safecall;
    // IterarOperacaoTef :  
   function IterarOperacaoTef:IIteracaoTef;safecall;
    // SolicitarInformacoesPinpad :  
   function SolicitarInformacoesPinpad(requisicaoPinpad:IRequisicaoInformacaoPinpad):WideString;safecall;
    // Configurar :  
   function Configurar(configs:IConfiguracoes):Integer;safecall;
    // PagamentoTicketCarPessoaFisica :  
   function PagamentoTicketCarPessoaFisica(valor:Double;detalhes:IDetalhesPagamentoTicketCarPessoaFisica):Integer;safecall;
    // RecargaCelular :  
   function RecargaCelular(detalhes:IDetalhesRecarga):IIteracaoTef;safecall;
    // ObterOperadoras :  
   function ObterOperadoras:IDetalhesOperadoras;safecall;
    // ObterProdutosOperadoras :  
   function ObterProdutosOperadoras(mobileOperator:WideString):IDetalhesProdutosOperadoras;safecall;
  end;


// IClienteCappta : 

 IClienteCapptaDisp = dispinterface
   ['{B7EAC4F5-BAB7-4371-9BAC-A962CF737EDD}']
    // CancelarPagamento :  
   function CancelarPagamento(senhaAdministrativa:WideString;numeroControle:WideString):Integer;dispid 1;
    // PagamentoDebito :  
   function PagamentoDebito(valor:Double):Integer;dispid 2;
    // PagamentoCrediario :  
   function PagamentoCrediario(valor:Double;detalhes:IDetalhesCrediario):Integer;dispid 3;
    // PagamentoCredito :  
   function PagamentoCredito(valor:Double;detalhes:IDetalhesCredito):Integer;dispid 4;
    // ReimprimirCupom :  
   function ReimprimirCupom(numeroControle:WideString;tipoVia:Integer):Integer;dispid 5;
    // ReimprimirUltimoCupom :  
   function ReimprimirUltimoCupom(tipoVia:Integer):Integer;dispid 6;
    // IniciarMultiCartoes :  
   function IniciarMultiCartoes(quantidadePagamentos:Integer):Integer;dispid 7;
    // ConfirmarPagamentos :  
   function ConfirmarPagamentos:Integer;dispid 8;
    // DesfazerPagamentos :  
   function DesfazerPagamentos:Integer;dispid 9;
    // EnviarParametro :  
   function EnviarParametro(parametro:WideString;acao:Integer):Integer;dispid 10;
    // AutenticarPdv :  
   function AutenticarPdv(cnpj:WideString;pdv:Integer;chaveAutenticacao:WideString):Integer;dispid 11;
    // IterarOperacaoTef :  
   function IterarOperacaoTef:IIteracaoTef;dispid 12;
    // SolicitarInformacoesPinpad :  
   function SolicitarInformacoesPinpad(requisicaoPinpad:IRequisicaoInformacaoPinpad):WideString;dispid 13;
    // Configurar :  
   function Configurar(configs:IConfiguracoes):Integer;dispid 14;
    // PagamentoTicketCarPessoaFisica :  
   function PagamentoTicketCarPessoaFisica(valor:Double;detalhes:IDetalhesPagamentoTicketCarPessoaFisica):Integer;dispid 15;
    // RecargaCelular :  
   function RecargaCelular(detalhes:IDetalhesRecarga):IIteracaoTef;dispid 16;
    // ObterOperadoras :  
   function ObterOperadoras:IDetalhesOperadoras;dispid 17;
    // ObterProdutosOperadoras :  
   function ObterProdutosOperadoras(mobileOperator:WideString):IDetalhesProdutosOperadoras;dispid 18;
  end;


// IDetalhesOperadoras : 

 IDetalhesOperadoras = interface(IDispatch)
   ['{6C656481-2AF9-4533-A7B2-4AF80B5DCFCA}']
   function Get_CodigoResposta : Integer; safecall;
   procedure Set_CodigoResposta(const pRetVal:Integer); safecall;
   function Get_Operadoras : PSafeArray; safecall;
   procedure Set_Operadoras(const pRetVal:PSafeArray); safecall;
    // CodigoResposta :  
   property CodigoResposta:Integer read Get_CodigoResposta write Set_CodigoResposta;
    // Operadoras :  
   property Operadoras:PSafeArray read Get_Operadoras write Set_Operadoras;
  end;


// IDetalhesOperadoras : 

 IDetalhesOperadorasDisp = dispinterface
   ['{6C656481-2AF9-4533-A7B2-4AF80B5DCFCA}']
    // CodigoResposta :  
   property CodigoResposta:Integer dispid 1;
    // Operadoras :  
   property Operadoras:{!! PSafeArray !!} OleVariant dispid 2;
  end;


// IDetalhesProdutosOperadoras : 

 IDetalhesProdutosOperadoras = interface(IDispatch)
   ['{13DF9713-8A2E-438F-8BA8-0C468E16FC12}']
   function Get_CodigoResposta : Integer; safecall;
   procedure Set_CodigoResposta(const pRetVal:Integer); safecall;
   function Get_Produtos : PSafeArray; safecall;
   procedure Set_Produtos(const pRetVal:PSafeArray); safecall;
    // CodigoResposta :  
   property CodigoResposta:Integer read Get_CodigoResposta write Set_CodigoResposta;
    // Produtos :  
   property Produtos:PSafeArray read Get_Produtos write Set_Produtos;
  end;


// IDetalhesProdutosOperadoras : 

 IDetalhesProdutosOperadorasDisp = dispinterface
   ['{13DF9713-8A2E-438F-8BA8-0C468E16FC12}']
    // CodigoResposta :  
   property CodigoResposta:Integer dispid 1;
    // Produtos :  
   property Produtos:{!! PSafeArray !!} OleVariant dispid 2;
  end;


// IDetalhesRecarga : 

 IDetalhesRecarga = interface(IDispatch)
   ['{7293D495-C2BF-49DA-99C2-9F7D01F90C33}']
   function Get_Ddd : Integer; safecall;
   procedure Set_Ddd(const pRetVal:Integer); safecall;
   function Get_Celular : Integer; safecall;
   procedure Set_Celular(const pRetVal:Integer); safecall;
   function Get_ValorRecarga : Double; safecall;
   procedure Set_ValorRecarga(const pRetVal:Double); safecall;
   function Get_TransactionId : Integer; safecall;
   procedure Set_TransactionId(const pRetVal:Integer); safecall;
   function Get_Produto : IProdutoRecarga; safecall;
   procedure Set_Produto(const pRetVal:IProdutoRecarga); safecall;
    // Ddd :  
   property Ddd:Integer read Get_Ddd write Set_Ddd;
    // Celular :  
   property Celular:Integer read Get_Celular write Set_Celular;
    // ValorRecarga :  
   property ValorRecarga:Double read Get_ValorRecarga write Set_ValorRecarga;
    // TransactionId :  
   property TransactionId:Integer read Get_TransactionId write Set_TransactionId;
    // Produto :  
   property Produto:IProdutoRecarga read Get_Produto write Set_Produto;
  end;


// IDetalhesRecarga : 

 IDetalhesRecargaDisp = dispinterface
   ['{7293D495-C2BF-49DA-99C2-9F7D01F90C33}']
    // Ddd :  
   property Ddd:Integer dispid 1;
    // Celular :  
   property Celular:Integer dispid 2;
    // ValorRecarga :  
   property ValorRecarga:Double dispid 3;
    // TransactionId :  
   property TransactionId:Integer dispid 4;
    // Produto :  
   property Produto:IProdutoRecarga dispid 5;
  end;


// IProdutoRecarga : 

 IProdutoRecarga = interface(IDispatch)
   ['{8F598C03-4324-4932-851C-64EB8899AB30}']
   function Get_mobileOperator : WideString; safecall;
   procedure Set_mobileOperator(const pRetVal:WideString); safecall;
   function Get_Code : WideString; safecall;
   procedure Set_Code(const pRetVal:WideString); safecall;
   function Get_Name : WideString; safecall;
   procedure Set_Name(const pRetVal:WideString); safecall;
   function Get_Price : Double; safecall;
   procedure Set_Price(const pRetVal:Double); safecall;
   function Get_IsVariable : WordBool; safecall;
   procedure Set_IsVariable(const pRetVal:WordBool); safecall;
   function Get_MinPrice : Double; safecall;
   procedure Set_MinPrice(const pRetVal:Double); safecall;
   function Get_MaxPrice : Double; safecall;
   procedure Set_MaxPrice(const pRetVal:Double); safecall;
   function Get_Increment : Double; safecall;
   procedure Set_Increment(const pRetVal:Double); safecall;
   function Get_ExpirationDateInDays : Integer; safecall;
   procedure Set_ExpirationDateInDays(const pRetVal:Integer); safecall;
   function Get_RechargeType : WideString; safecall;
   procedure Set_RechargeType(const pRetVal:WideString); safecall;
    // mobileOperator :  
   property mobileOperator:WideString read Get_mobileOperator write Set_mobileOperator;
    // Code :  
   property Code:WideString read Get_Code write Set_Code;
    // Name :  
   property Name:WideString read Get_Name write Set_Name;
    // Price :  
   property Price:Double read Get_Price write Set_Price;
    // IsVariable :  
   property IsVariable:WordBool read Get_IsVariable write Set_IsVariable;
    // MinPrice :  
   property MinPrice:Double read Get_MinPrice write Set_MinPrice;
    // MaxPrice :  
   property MaxPrice:Double read Get_MaxPrice write Set_MaxPrice;
    // Increment :  
   property Increment:Double read Get_Increment write Set_Increment;
    // ExpirationDateInDays :  
   property ExpirationDateInDays:Integer read Get_ExpirationDateInDays write Set_ExpirationDateInDays;
    // RechargeType :  
   property RechargeType:WideString read Get_RechargeType write Set_RechargeType;
  end;


// IProdutoRecarga : 

 IProdutoRecargaDisp = dispinterface
   ['{8F598C03-4324-4932-851C-64EB8899AB30}']
    // mobileOperator :  
   property mobileOperator:WideString dispid 1;
    // Code :  
   property Code:WideString dispid 2;
    // Name :  
   property Name:WideString dispid 3;
    // Price :  
   property Price:Double dispid 4;
    // IsVariable :  
   property IsVariable:WordBool dispid 5;
    // MinPrice :  
   property MinPrice:Double dispid 6;
    // MaxPrice :  
   property MaxPrice:Double dispid 7;
    // Increment :  
   property Increment:Double dispid 8;
    // ExpirationDateInDays :  
   property ExpirationDateInDays:Integer dispid 9;
    // RechargeType :  
   property RechargeType:WideString dispid 10;
  end;


// IRespostaInformacaoPinpad : 

 IRespostaInformacaoPinpad = interface(IDispatch)
   ['{2ED6D3A7-733D-456D-8886-4A7EE8483784}']
   function Get_PinpadInputValue : WideString; safecall;
    // PinpadInputValue :  
   property PinpadInputValue:WideString read Get_PinpadInputValue;
  end;


// IRespostaInformacaoPinpad : 

 IRespostaInformacaoPinpadDisp = dispinterface
   ['{2ED6D3A7-733D-456D-8886-4A7EE8483784}']
    // PinpadInputValue :  
   property PinpadInputValue:WideString  readonly dispid 1;
  end;


// IRequisicaoInformacaoPinpad : 

 IRequisicaoInformacaoPinpad = interface(IDispatch)
   ['{7A327E30-1CC7-449D-BD86-0ECF56A46680}']
   function Get_TipoInformacaoPinpad : Integer; safecall;
   procedure Set_TipoInformacaoPinpad(const pRetVal:Integer); safecall;
    // TipoInformacaoPinpad :  
   property TipoInformacaoPinpad:Integer read Get_TipoInformacaoPinpad write Set_TipoInformacaoPinpad;
  end;


// IRequisicaoInformacaoPinpad : 

 IRequisicaoInformacaoPinpadDisp = dispinterface
   ['{7A327E30-1CC7-449D-BD86-0ECF56A46680}']
    // TipoInformacaoPinpad :  
   property TipoInformacaoPinpad:Integer dispid 1;
  end;


// IRespostaRecarga : 

 IRespostaRecarga = interface(IDispatch)
   ['{EE2C8ECD-CE1A-4904-9E48-36BFF9116B01}']
   function Get_CupomLojista : WideString; safecall;
   function Get_CupomCliente : WideString; safecall;
    // CupomLojista :  
   property CupomLojista:WideString read Get_CupomLojista;
    // CupomCliente :  
   property CupomCliente:WideString read Get_CupomCliente;
  end;


// IRespostaRecarga : 

 IRespostaRecargaDisp = dispinterface
   ['{EE2C8ECD-CE1A-4904-9E48-36BFF9116B01}']
    // CupomLojista :  
   property CupomLojista:WideString  readonly dispid 1;
    // CupomCliente :  
   property CupomCliente:WideString  readonly dispid 2;
  end;


// ITransacaoPendente : 

 ITransacaoPendente = interface(IDispatch)
   ['{BD569E64-0F02-46F2-A8C0-6581F963B32A}']
   function Get_numeroControle : WideString; safecall;
   function Get_NomeAdquirente : WideString; safecall;
   function Get_NomeBandeiraCartao : WideString; safecall;
   function Get_DataHoraAutorizacao : TDateTime; safecall;
   function Get_valor : Double; safecall;
    // numeroControle :  
   property numeroControle:WideString read Get_numeroControle;
    // NomeAdquirente :  
   property NomeAdquirente:WideString read Get_NomeAdquirente;
    // NomeBandeiraCartao :  
   property NomeBandeiraCartao:WideString read Get_NomeBandeiraCartao;
    // DataHoraAutorizacao :  
   property DataHoraAutorizacao:TDateTime read Get_DataHoraAutorizacao;
    // valor :  
   property valor:Double read Get_valor;
  end;


// ITransacaoPendente : 

 ITransacaoPendenteDisp = dispinterface
   ['{BD569E64-0F02-46F2-A8C0-6581F963B32A}']
    // numeroControle :  
   property numeroControle:WideString  readonly dispid 1;
    // NomeAdquirente :  
   property NomeAdquirente:WideString  readonly dispid 2;
    // NomeBandeiraCartao :  
   property NomeBandeiraCartao:WideString  readonly dispid 3;
    // DataHoraAutorizacao :  
   property DataHoraAutorizacao:TDateTime  readonly dispid 4;
    // valor :  
   property valor:Double  readonly dispid 5;
  end;


// IConfiguracoes : 

 IConfiguracoes = interface(IDispatch)
   ['{0C987364-605C-423A-887E-E368A12A0C81}']
   function Get_ExibirInterface : WordBool; safecall;
   procedure Set_ExibirInterface(const pRetVal:WordBool); safecall;
    // ExibirInterface :  
   property ExibirInterface:WordBool read Get_ExibirInterface write Set_ExibirInterface;
  end;


// IConfiguracoes : 

 IConfiguracoesDisp = dispinterface
   ['{0C987364-605C-423A-887E-E368A12A0C81}']
    // ExibirInterface :  
   property ExibirInterface:WordBool dispid 1610743808;
  end;


// IRespostaTransacaoPendente : 

 IRespostaTransacaoPendente = interface(IDispatch)
   ['{013B67B2-5369-4D45-B3D1-BE6DFC9B969A}']
   function Get_ListaTransacoesPendentes : PSafeArray; safecall;
   procedure Set_ListaTransacoesPendentes(const pRetVal:PSafeArray); safecall;
   function Get_Mensagem : WideString; safecall;
    // ListaTransacoesPendentes :  
   property ListaTransacoesPendentes:PSafeArray read Get_ListaTransacoesPendentes write Set_ListaTransacoesPendentes;
    // Mensagem :  
   property Mensagem:WideString read Get_Mensagem;
  end;


// IRespostaTransacaoPendente : 

 IRespostaTransacaoPendenteDisp = dispinterface
   ['{013B67B2-5369-4D45-B3D1-BE6DFC9B969A}']
    // ListaTransacoesPendentes :  
   property ListaTransacoesPendentes:{!! PSafeArray !!} OleVariant dispid 1;
    // Mensagem :  
   property Mensagem:WideString  readonly dispid 2;
  end;


// IDetalhesPagamentoTicketCarPessoaFisica : 

 IDetalhesPagamentoTicketCarPessoaFisica = interface(IDispatch)
   ['{9FC96AB8-65CB-414C-86F9-D6BC5EF0E62C}']
   function Get_NumeroReciboFiscal : WideString; safecall;
   procedure Set_NumeroReciboFiscal(const pRetVal:WideString); safecall;
   function Get_NumeroSerialECF : WideString; safecall;
   procedure Set_NumeroSerialECF(const pRetVal:WideString); safecall;
    // NumeroReciboFiscal :  
   property NumeroReciboFiscal:WideString read Get_NumeroReciboFiscal write Set_NumeroReciboFiscal;
    // NumeroSerialECF :  
   property NumeroSerialECF:WideString read Get_NumeroSerialECF write Set_NumeroSerialECF;
  end;


// IDetalhesPagamentoTicketCarPessoaFisica : 

 IDetalhesPagamentoTicketCarPessoaFisicaDisp = dispinterface
   ['{9FC96AB8-65CB-414C-86F9-D6BC5EF0E62C}']
    // NumeroReciboFiscal :  
   property NumeroReciboFiscal:WideString dispid 1;
    // NumeroSerialECF :  
   property NumeroSerialECF:WideString dispid 2;
  end;


// IDetalhesPagamentoTicketCarGestaoFrota : 

 IDetalhesPagamentoTicketCarGestaoFrota = interface(IDispatch)
   ['{D41FC4D2-7E47-4451-B1B2-5C030AD950A7}']
   function Get_NumeroReciboFiscal : WideString; safecall;
   procedure Set_NumeroReciboFiscal(const pRetVal:WideString); safecall;
   function Get_NumeroSerialECF : WideString; safecall;
   procedure Set_NumeroSerialECF(const pRetVal:WideString); safecall;
   function Get_CodigoRamoAtividade : Integer; safecall;
   procedure Set_CodigoRamoAtividade(const pRetVal:Integer); safecall;
   function Get_ListaProdutos : PSafeArray; safecall;
   procedure Set_ListaProdutos(const pRetVal:PSafeArray); safecall;
    // NumeroReciboFiscal :  
   property NumeroReciboFiscal:WideString read Get_NumeroReciboFiscal write Set_NumeroReciboFiscal;
    // NumeroSerialECF :  
   property NumeroSerialECF:WideString read Get_NumeroSerialECF write Set_NumeroSerialECF;
    // CodigoRamoAtividade :  
   property CodigoRamoAtividade:Integer read Get_CodigoRamoAtividade write Set_CodigoRamoAtividade;
    // ListaProdutos :  
   property ListaProdutos:PSafeArray read Get_ListaProdutos write Set_ListaProdutos;
  end;


// IDetalhesPagamentoTicketCarGestaoFrota : 

 IDetalhesPagamentoTicketCarGestaoFrotaDisp = dispinterface
   ['{D41FC4D2-7E47-4451-B1B2-5C030AD950A7}']
    // NumeroReciboFiscal :  
   property NumeroReciboFiscal:WideString dispid 1;
    // NumeroSerialECF :  
   property NumeroSerialECF:WideString dispid 2;
    // CodigoRamoAtividade :  
   property CodigoRamoAtividade:Integer dispid 3;
    // ListaProdutos :  
   property ListaProdutos:{!! PSafeArray !!} OleVariant dispid 4;
  end;


// IIteracaoTef : 

 IIteracaoTef = interface(IDispatch)
   ['{44B8B0E0-907B-405A-B638-60A25F1F2954}']
   function Get_TipoIteracao : Integer; safecall;
    // Clone :  
   function Clone:IIteracaoTef;safecall;
    // TipoIteracao :  
   property TipoIteracao:Integer read Get_TipoIteracao;
  end;


// IIteracaoTef : 

 IIteracaoTefDisp = dispinterface
   ['{44B8B0E0-907B-405A-B638-60A25F1F2954}']
    // Clone :  
   function Clone:IIteracaoTef;dispid 1610743809;
    // TipoIteracao :  
   property TipoIteracao:Integer  readonly dispid 1610743808;
  end;


// IMensagem : 

 IMensagem = interface(IDispatch)
   ['{C4410200-F363-4FFA-8D50-C3475CBAB4A6}']
   function Get_Descricao : WideString; safecall;
    // Descricao :  
   property Descricao:WideString read Get_Descricao;
  end;


// IMensagem : 

 IMensagemDisp = dispinterface
   ['{C4410200-F363-4FFA-8D50-C3475CBAB4A6}']
    // Descricao :  
   property Descricao:WideString  readonly dispid 1;
  end;


// IProdutoTicketCar : 

 IProdutoTicketCar = interface(IDispatch)
   ['{391BB57A-269E-4B18-959D-2C347A0EC352}']
   function Get_RamoAtividadeId : Integer; safecall;
   procedure Set_RamoAtividadeId(const pRetVal:Integer); safecall;
   function Get_RamoAtividadeNome : WideString; safecall;
   procedure Set_RamoAtividadeNome(const pRetVal:WideString); safecall;
   function Get_TipoProdutoId : Integer; safecall;
   procedure Set_TipoProdutoId(const pRetVal:Integer); safecall;
   function Get_TipoProdutoNome : WideString; safecall;
   procedure Set_TipoProdutoNome(const pRetVal:WideString); safecall;
   function Get_ProdutoId : Integer; safecall;
   procedure Set_ProdutoId(const pRetVal:Integer); safecall;
   function Get_ProdutoNome : WideString; safecall;
   procedure Set_ProdutoNome(const pRetVal:WideString); safecall;
    // RamoAtividadeId :  
   property RamoAtividadeId:Integer read Get_RamoAtividadeId write Set_RamoAtividadeId;
    // RamoAtividadeNome :  
   property RamoAtividadeNome:WideString read Get_RamoAtividadeNome write Set_RamoAtividadeNome;
    // TipoProdutoId :  
   property TipoProdutoId:Integer read Get_TipoProdutoId write Set_TipoProdutoId;
    // TipoProdutoNome :  
   property TipoProdutoNome:WideString read Get_TipoProdutoNome write Set_TipoProdutoNome;
    // ProdutoId :  
   property ProdutoId:Integer read Get_ProdutoId write Set_ProdutoId;
    // ProdutoNome :  
   property ProdutoNome:WideString read Get_ProdutoNome write Set_ProdutoNome;
  end;


// IProdutoTicketCar : 

 IProdutoTicketCarDisp = dispinterface
   ['{391BB57A-269E-4B18-959D-2C347A0EC352}']
    // RamoAtividadeId :  
   property RamoAtividadeId:Integer dispid 1;
    // RamoAtividadeNome :  
   property RamoAtividadeNome:WideString dispid 2;
    // TipoProdutoId :  
   property TipoProdutoId:Integer dispid 3;
    // TipoProdutoNome :  
   property TipoProdutoNome:WideString dispid 4;
    // ProdutoId :  
   property ProdutoId:Integer dispid 5;
    // ProdutoNome :  
   property ProdutoNome:WideString dispid 6;
  end;


// IRequisicaoParametro : 

 IRequisicaoParametro = interface(IDispatch)
   ['{DBAB4B16-D117-4C3D-B8E2-AB3E11640AEA}']
   function Get_Mensagem : WideString; safecall;
    // Mensagem :  
   property Mensagem:WideString read Get_Mensagem;
  end;


// IRequisicaoParametro : 

 IRequisicaoParametroDisp = dispinterface
   ['{DBAB4B16-D117-4C3D-B8E2-AB3E11640AEA}']
    // Mensagem :  
   property Mensagem:WideString  readonly dispid 1;
  end;


// IRequisicaoProdutoTicketCar : 

 IRequisicaoProdutoTicketCar = interface(IDispatch)
   ['{4D84F541-0A06-4D35-9948-61C2FC8A2E1D}']
   function Get_Codigo : Integer; safecall;
   procedure Set_Codigo(const pRetVal:Integer); safecall;
   function Get_Descricao : WideString; safecall;
   procedure Set_Descricao(const pRetVal:WideString); safecall;
   function Get_Quantidade : Integer; safecall;
   procedure Set_Quantidade(const pRetVal:Integer); safecall;
   function Get_ValorUnitario : Double; safecall;
   procedure Set_ValorUnitario(const pRetVal:Double); safecall;
   function Get_ValorDesconto : Double; safecall;
   procedure Set_ValorDesconto(const pRetVal:Double); safecall;
   function Get_TipoDesconto : Integer; safecall;
   procedure Set_TipoDesconto(const pRetVal:Integer); safecall;
    // Codigo :  
   property Codigo:Integer read Get_Codigo write Set_Codigo;
    // Descricao :  
   property Descricao:WideString read Get_Descricao write Set_Descricao;
    // Quantidade :  
   property Quantidade:Integer read Get_Quantidade write Set_Quantidade;
    // ValorUnitario :  
   property ValorUnitario:Double read Get_ValorUnitario write Set_ValorUnitario;
    // ValorDesconto :  
   property ValorDesconto:Double read Get_ValorDesconto write Set_ValorDesconto;
    // TipoDesconto :  
   property TipoDesconto:Integer read Get_TipoDesconto write Set_TipoDesconto;
  end;


// IRequisicaoProdutoTicketCar : 

 IRequisicaoProdutoTicketCarDisp = dispinterface
   ['{4D84F541-0A06-4D35-9948-61C2FC8A2E1D}']
    // Codigo :  
   property Codigo:Integer dispid 1;
    // Descricao :  
   property Descricao:WideString dispid 2;
    // Quantidade :  
   property Quantidade:Integer dispid 3;
    // ValorUnitario :  
   property ValorUnitario:Double dispid 4;
    // ValorDesconto :  
   property ValorDesconto:Double dispid 5;
    // TipoDesconto :  
   property TipoDesconto:Integer dispid 6;
  end;


// IRespostaOperacaoAprovada : 

 IRespostaOperacaoAprovada = interface(IDispatch)
   ['{77EF0C8B-2957-40B0-8519-E49DC08F11DA}']
   function Get_CodigoAutorizacaoAdquirente : WideString; safecall;
   function Get_CupomCliente : WideString; safecall;
   function Get_CupomLojista : WideString; safecall;
   function Get_CupomReduzido : WideString; safecall;
   function Get_DataHoraAutorizacao : TDateTime; safecall;
   function Get_NomeAdquirente : WideString; safecall;
   function Get_NomeBandeiraCartao : WideString; safecall;
   function Get_NsuAdquirente : WideString; safecall;
   function Get_NsuTef : QWord; safecall;
   function Get_numeroControle : WideString; safecall;
   function Get_CodigoBandeiraCartao : Integer; safecall;
   function Get_NumeroCartaoCliente : WideString; safecall;
   function Get_NumeroAfiliacao : WideString; safecall;
    // CodigoAutorizacaoAdquirente :  
   property CodigoAutorizacaoAdquirente:WideString read Get_CodigoAutorizacaoAdquirente;
    // CupomCliente :  
   property CupomCliente:WideString read Get_CupomCliente;
    // CupomLojista :  
   property CupomLojista:WideString read Get_CupomLojista;
    // CupomReduzido :  
   property CupomReduzido:WideString read Get_CupomReduzido;
    // DataHoraAutorizacao :  
   property DataHoraAutorizacao:TDateTime read Get_DataHoraAutorizacao;
    // NomeAdquirente :  
   property NomeAdquirente:WideString read Get_NomeAdquirente;
    // NomeBandeiraCartao :  
   property NomeBandeiraCartao:WideString read Get_NomeBandeiraCartao;
    // NsuAdquirente :  
   property NsuAdquirente:WideString read Get_NsuAdquirente;
    // NsuTef :  
   property NsuTef:QWord read Get_NsuTef;
    // numeroControle :  
   property numeroControle:WideString read Get_numeroControle;
    // CodigoBandeiraCartao :  
   property CodigoBandeiraCartao:Integer read Get_CodigoBandeiraCartao;
    // NumeroCartaoCliente :  
   property NumeroCartaoCliente:WideString read Get_NumeroCartaoCliente;
    // NumeroAfiliacao :  
   property NumeroAfiliacao:WideString read Get_NumeroAfiliacao;
  end;


// IRespostaOperacaoAprovada : 

 IRespostaOperacaoAprovadaDisp = dispinterface
   ['{77EF0C8B-2957-40B0-8519-E49DC08F11DA}']
    // CodigoAutorizacaoAdquirente :  
   property CodigoAutorizacaoAdquirente:WideString  readonly dispid 1;
    // CupomCliente :  
   property CupomCliente:WideString  readonly dispid 2;
    // CupomLojista :  
   property CupomLojista:WideString  readonly dispid 3;
    // CupomReduzido :  
   property CupomReduzido:WideString  readonly dispid 4;
    // DataHoraAutorizacao :  
   property DataHoraAutorizacao:TDateTime  readonly dispid 5;
    // NomeAdquirente :  
   property NomeAdquirente:WideString  readonly dispid 6;
    // NomeBandeiraCartao :  
   property NomeBandeiraCartao:WideString  readonly dispid 7;
    // NsuAdquirente :  
   property NsuAdquirente:WideString  readonly dispid 8;
    // NsuTef :  
   property NsuTef:QWord  readonly dispid 9;
    // numeroControle :  
   property numeroControle:WideString  readonly dispid 10;
    // CodigoBandeiraCartao :  
   property CodigoBandeiraCartao:Integer  readonly dispid 11;
    // NumeroCartaoCliente :  
   property NumeroCartaoCliente:WideString  readonly dispid 12;
    // NumeroAfiliacao :  
   property NumeroAfiliacao:WideString  readonly dispid 13;
  end;


// IRespostaOperacaoRecusada : 

 IRespostaOperacaoRecusada = interface(IDispatch)
   ['{FCE2A076-A595-41F9-BBE9-50AEC491BC94}']
   function Get_CodigoMotivo : Integer; safecall;
   function Get_Motivo : WideString; safecall;
    // CodigoMotivo :  
   property CodigoMotivo:Integer read Get_CodigoMotivo;
    // Motivo :  
   property Motivo:WideString read Get_Motivo;
  end;


// IRespostaOperacaoRecusada : 

 IRespostaOperacaoRecusadaDisp = dispinterface
   ['{FCE2A076-A595-41F9-BBE9-50AEC491BC94}']
    // CodigoMotivo :  
   property CodigoMotivo:Integer  readonly dispid 1;
    // Motivo :  
   property Motivo:WideString  readonly dispid 2;
  end;


// IRespostaProdutoTicketCar : 

 IRespostaProdutoTicketCar = interface(IDispatch)
   ['{3687FED3-4266-4677-A6B3-35FEF3C3DE6E}']
   function Get_CodigoResposta : Integer; safecall;
   procedure Set_CodigoResposta(const pRetVal:Integer); safecall;
   function Get_ListaProdutos : PSafeArray; safecall;
   procedure Set_ListaProdutos(const pRetVal:PSafeArray); safecall;
    // CodigoResposta :  
   property CodigoResposta:Integer read Get_CodigoResposta write Set_CodigoResposta;
    // ListaProdutos :  
   property ListaProdutos:PSafeArray read Get_ListaProdutos write Set_ListaProdutos;
  end;


// IRespostaProdutoTicketCar : 

 IRespostaProdutoTicketCarDisp = dispinterface
   ['{3687FED3-4266-4677-A6B3-35FEF3C3DE6E}']
    // CodigoResposta :  
   property CodigoResposta:Integer dispid 1;
    // ListaProdutos :  
   property ListaProdutos:{!! PSafeArray !!} OleVariant dispid 2;
  end;


// IDetalhesCrediario : 

 IDetalhesCrediario = interface(IDispatch)
   ['{AFF482ED-60D9-437D-8848-10D690B72FAD}']
   function Get_QuantidadeParcelas : Integer; safecall;
   procedure Set_QuantidadeParcelas(const pRetVal:Integer); safecall;
    // QuantidadeParcelas :  
   property QuantidadeParcelas:Integer read Get_QuantidadeParcelas write Set_QuantidadeParcelas;
  end;


// IDetalhesCrediario : 

 IDetalhesCrediarioDisp = dispinterface
   ['{AFF482ED-60D9-437D-8848-10D690B72FAD}']
    // QuantidadeParcelas :  
   property QuantidadeParcelas:Integer dispid 1;
  end;


// IDetalhesCredito : 

 IDetalhesCredito = interface(IDispatch)
   ['{39FA5108-EF0F-457B-A003-54460A297824}']
   function Get_TransacaoParcelada : WordBool; safecall;
   procedure Set_TransacaoParcelada(const pRetVal:WordBool); safecall;
   function Get_TipoParcelamento : Integer; safecall;
   procedure Set_TipoParcelamento(const pRetVal:Integer); safecall;
   function Get_QuantidadeParcelas : Integer; safecall;
   procedure Set_QuantidadeParcelas(const pRetVal:Integer); safecall;
    // TransacaoParcelada :  
   property TransacaoParcelada:WordBool read Get_TransacaoParcelada write Set_TransacaoParcelada;
    // TipoParcelamento :  
   property TipoParcelamento:Integer read Get_TipoParcelamento write Set_TipoParcelamento;
    // QuantidadeParcelas :  
   property QuantidadeParcelas:Integer read Get_QuantidadeParcelas write Set_QuantidadeParcelas;
  end;


// IDetalhesCredito : 

 IDetalhesCreditoDisp = dispinterface
   ['{39FA5108-EF0F-457B-A003-54460A297824}']
    // TransacaoParcelada :  
   property TransacaoParcelada:WordBool dispid 1;
    // TipoParcelamento :  
   property TipoParcelamento:Integer dispid 2;
    // QuantidadeParcelas :  
   property QuantidadeParcelas:Integer dispid 3;
  end;


// _ProcessWrapper : 

 _ProcessWrapper = interface(IDispatch)
   ['{CA70CE91-D1A6-3E89-A359-67876C0638E7}']
  end;


// _ProcessWrapper : 

 _ProcessWrapperDisp = dispinterface
   ['{CA70CE91-D1A6-3E89-A359-67876C0638E7}']
  end;


// _NamedPipeClientWrapper : 

 _NamedPipeClientWrapper = interface(IDispatch)
   ['{AF58DB95-7BDB-34C2-B3D0-134CB1CEEBE2}']
  end;


// _NamedPipeClientWrapper : 

 _NamedPipeClientWrapperDisp = dispinterface
   ['{AF58DB95-7BDB-34C2-B3D0-134CB1CEEBE2}']
  end;


// _ServerMessageEventArgs : 

 _ServerMessageEventArgs = interface(IDispatch)
   ['{344104C0-F1B1-38A5-8585-FED8066317B7}']
  end;


// _ServerMessageEventArgs : 

 _ServerMessageEventArgsDisp = dispinterface
   ['{344104C0-F1B1-38A5-8585-FED8066317B7}']
  end;


// _MapTicketCarProductsResponse : 

 _MapTicketCarProductsResponse = interface(IDispatch)
   ['{E175F731-625B-3691-8AB3-55BEBF1F7E31}']
  end;


// _MapTicketCarProductsResponse : 

 _MapTicketCarProductsResponseDisp = dispinterface
   ['{E175F731-625B-3691-8AB3-55BEBF1F7E31}']
  end;

//CoClasses
  CoClienteCappta = Class
  Public
    Class Function Create: IClienteCappta;
    Class Function CreateRemote(const MachineName: string): IClienteCappta;
  end;

  CoProcessWrapper = Class
  Public
    Class Function Create: _ProcessWrapper;
    Class Function CreateRemote(const MachineName: string): _ProcessWrapper;
  end;

  CoNamedPipeClientWrapper = Class
  Public
    Class Function Create: _NamedPipeClientWrapper;
    Class Function CreateRemote(const MachineName: string): _NamedPipeClientWrapper;
  end;

  CoServerMessageEventArgs = Class
  Public
    Class Function Create: _ServerMessageEventArgs;
    Class Function CreateRemote(const MachineName: string): _ServerMessageEventArgs;
  end;

  CoDetalhesOperadoras = Class
  Public
    Class Function Create: IDetalhesOperadoras;
    Class Function CreateRemote(const MachineName: string): IDetalhesOperadoras;
  end;

  CoDetalhesProdutosOperadoras = Class
  Public
    Class Function Create: IDetalhesProdutosOperadoras;
    Class Function CreateRemote(const MachineName: string): IDetalhesProdutosOperadoras;
  end;

  CoDetalhesRecarga = Class
  Public
    Class Function Create: IDetalhesRecarga;
    Class Function CreateRemote(const MachineName: string): IDetalhesRecarga;
  end;

  CoProdutoRecarga = Class
  Public
    Class Function Create: IProdutoRecarga;
    Class Function CreateRemote(const MachineName: string): IProdutoRecarga;
  end;

  CoRespostaInformacaoPinpad = Class
  Public
    Class Function Create: IRespostaInformacaoPinpad;
    Class Function CreateRemote(const MachineName: string): IRespostaInformacaoPinpad;
  end;

  CoRequisicaoInformacaoPinpad = Class
  Public
    Class Function Create: IRequisicaoInformacaoPinpad;
    Class Function CreateRemote(const MachineName: string): IRequisicaoInformacaoPinpad;
  end;

  CoConfiguracoes = Class
  Public
    Class Function Create: IConfiguracoes;
    Class Function CreateRemote(const MachineName: string): IConfiguracoes;
  end;

  CoRespostaRecarga = Class
  Public
    Class Function Create: IRespostaRecarga;
    Class Function CreateRemote(const MachineName: string): IRespostaRecarga;
  end;

  CoRespostaTransacaoPendente = Class
  Public
    Class Function Create: IRespostaTransacaoPendente;
    Class Function CreateRemote(const MachineName: string): IRespostaTransacaoPendente;
  end;

  CoTransacaoPendente = Class
  Public
    Class Function Create: ITransacaoPendente;
    Class Function CreateRemote(const MachineName: string): ITransacaoPendente;
  end;

  CoDetalhesPagamentoTicketCarPessoaFisica = Class
  Public
    Class Function Create: IDetalhesPagamentoTicketCarPessoaFisica;
    Class Function CreateRemote(const MachineName: string): IDetalhesPagamentoTicketCarPessoaFisica;
  end;

  CoDetalhesPagamentoTicketCarGestaoFrota = Class
  Public
    Class Function Create: IDetalhesPagamentoTicketCarGestaoFrota;
    Class Function CreateRemote(const MachineName: string): IDetalhesPagamentoTicketCarGestaoFrota;
  end;

  CoMapTicketCarProductsResponse = Class
  Public
    Class Function Create: _MapTicketCarProductsResponse;
    Class Function CreateRemote(const MachineName: string): _MapTicketCarProductsResponse;
  end;

  CoMensagem = Class
  Public
    Class Function Create: IMensagem;
    Class Function CreateRemote(const MachineName: string): IMensagem;
  end;

  CoProdutoTicketCar = Class
  Public
    Class Function Create: IProdutoTicketCar;
    Class Function CreateRemote(const MachineName: string): IProdutoTicketCar;
  end;

  CoRequisicaoProdutoTicketCar = Class
  Public
    Class Function Create: IRequisicaoProdutoTicketCar;
    Class Function CreateRemote(const MachineName: string): IRequisicaoProdutoTicketCar;
  end;

  CoRespostaProdutoTicketCar = Class
  Public
    Class Function Create: IRespostaProdutoTicketCar;
    Class Function CreateRemote(const MachineName: string): IRespostaProdutoTicketCar;
  end;

  CoRequisicaoParametro = Class
  Public
    Class Function Create: IRequisicaoParametro;
    Class Function CreateRemote(const MachineName: string): IRequisicaoParametro;
  end;

  CoRespostaOperacaoAprovada = Class
  Public
    Class Function Create: IRespostaOperacaoAprovada;
    Class Function CreateRemote(const MachineName: string): IRespostaOperacaoAprovada;
  end;

  CoRespostaOperacaoRecusada = Class
  Public
    Class Function Create: IRespostaOperacaoRecusada;
    Class Function CreateRemote(const MachineName: string): IRespostaOperacaoRecusada;
  end;

  CoDetalhesCrediario = Class
  Public
    Class Function Create: IDetalhesCrediario;
    Class Function CreateRemote(const MachineName: string): IDetalhesCrediario;
  end;

  CoDetalhesCredito = Class
  Public
    Class Function Create: IDetalhesCredito;
    Class Function CreateRemote(const MachineName: string): IDetalhesCredito;
  end;

implementation

uses comobj;

Class Function CoClienteCappta.Create: IClienteCappta;
begin
  Result := CreateComObject(CLASS_ClienteCappta) as IClienteCappta;
end;

Class Function CoClienteCappta.CreateRemote(const MachineName: string): IClienteCappta;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_ClienteCappta) as IClienteCappta;
end;

Class Function CoProcessWrapper.Create: _ProcessWrapper;
begin
  Result := CreateComObject(CLASS_ProcessWrapper) as _ProcessWrapper;
end;

Class Function CoProcessWrapper.CreateRemote(const MachineName: string): _ProcessWrapper;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_ProcessWrapper) as _ProcessWrapper;
end;

Class Function CoNamedPipeClientWrapper.Create: _NamedPipeClientWrapper;
begin
  Result := CreateComObject(CLASS_NamedPipeClientWrapper) as _NamedPipeClientWrapper;
end;

Class Function CoNamedPipeClientWrapper.CreateRemote(const MachineName: string): _NamedPipeClientWrapper;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_NamedPipeClientWrapper) as _NamedPipeClientWrapper;
end;

Class Function CoServerMessageEventArgs.Create: _ServerMessageEventArgs;
begin
  Result := CreateComObject(CLASS_ServerMessageEventArgs) as _ServerMessageEventArgs;
end;

Class Function CoServerMessageEventArgs.CreateRemote(const MachineName: string): _ServerMessageEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_ServerMessageEventArgs) as _ServerMessageEventArgs;
end;

Class Function CoDetalhesOperadoras.Create: IDetalhesOperadoras;
begin
  Result := CreateComObject(CLASS_DetalhesOperadoras) as IDetalhesOperadoras;
end;

Class Function CoDetalhesOperadoras.CreateRemote(const MachineName: string): IDetalhesOperadoras;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_DetalhesOperadoras) as IDetalhesOperadoras;
end;

Class Function CoDetalhesProdutosOperadoras.Create: IDetalhesProdutosOperadoras;
begin
  Result := CreateComObject(CLASS_DetalhesProdutosOperadoras) as IDetalhesProdutosOperadoras;
end;

Class Function CoDetalhesProdutosOperadoras.CreateRemote(const MachineName: string): IDetalhesProdutosOperadoras;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_DetalhesProdutosOperadoras) as IDetalhesProdutosOperadoras;
end;

Class Function CoDetalhesRecarga.Create: IDetalhesRecarga;
begin
  Result := CreateComObject(CLASS_DetalhesRecarga) as IDetalhesRecarga;
end;

Class Function CoDetalhesRecarga.CreateRemote(const MachineName: string): IDetalhesRecarga;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_DetalhesRecarga) as IDetalhesRecarga;
end;

Class Function CoProdutoRecarga.Create: IProdutoRecarga;
begin
  Result := CreateComObject(CLASS_ProdutoRecarga) as IProdutoRecarga;
end;

Class Function CoProdutoRecarga.CreateRemote(const MachineName: string): IProdutoRecarga;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_ProdutoRecarga) as IProdutoRecarga;
end;

Class Function CoRespostaInformacaoPinpad.Create: IRespostaInformacaoPinpad;
begin
  Result := CreateComObject(CLASS_RespostaInformacaoPinpad) as IRespostaInformacaoPinpad;
end;

Class Function CoRespostaInformacaoPinpad.CreateRemote(const MachineName: string): IRespostaInformacaoPinpad;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_RespostaInformacaoPinpad) as IRespostaInformacaoPinpad;
end;

Class Function CoRequisicaoInformacaoPinpad.Create: IRequisicaoInformacaoPinpad;
begin
  Result := CreateComObject(CLASS_RequisicaoInformacaoPinpad) as IRequisicaoInformacaoPinpad;
end;

Class Function CoRequisicaoInformacaoPinpad.CreateRemote(const MachineName: string): IRequisicaoInformacaoPinpad;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_RequisicaoInformacaoPinpad) as IRequisicaoInformacaoPinpad;
end;

Class Function CoConfiguracoes.Create: IConfiguracoes;
begin
  Result := CreateComObject(CLASS_Configuracoes) as IConfiguracoes;
end;

Class Function CoConfiguracoes.CreateRemote(const MachineName: string): IConfiguracoes;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_Configuracoes) as IConfiguracoes;
end;

Class Function CoRespostaRecarga.Create: IRespostaRecarga;
begin
  Result := CreateComObject(CLASS_RespostaRecarga) as IRespostaRecarga;
end;

Class Function CoRespostaRecarga.CreateRemote(const MachineName: string): IRespostaRecarga;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_RespostaRecarga) as IRespostaRecarga;
end;

Class Function CoRespostaTransacaoPendente.Create: IRespostaTransacaoPendente;
begin
  Result := CreateComObject(CLASS_RespostaTransacaoPendente) as IRespostaTransacaoPendente;
end;

Class Function CoRespostaTransacaoPendente.CreateRemote(const MachineName: string): IRespostaTransacaoPendente;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_RespostaTransacaoPendente) as IRespostaTransacaoPendente;
end;

Class Function CoTransacaoPendente.Create: ITransacaoPendente;
begin
  Result := CreateComObject(CLASS_TransacaoPendente) as ITransacaoPendente;
end;

Class Function CoTransacaoPendente.CreateRemote(const MachineName: string): ITransacaoPendente;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_TransacaoPendente) as ITransacaoPendente;
end;

Class Function CoDetalhesPagamentoTicketCarPessoaFisica.Create: IDetalhesPagamentoTicketCarPessoaFisica;
begin
  Result := CreateComObject(CLASS_DetalhesPagamentoTicketCarPessoaFisica) as IDetalhesPagamentoTicketCarPessoaFisica;
end;

Class Function CoDetalhesPagamentoTicketCarPessoaFisica.CreateRemote(const MachineName: string): IDetalhesPagamentoTicketCarPessoaFisica;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_DetalhesPagamentoTicketCarPessoaFisica) as IDetalhesPagamentoTicketCarPessoaFisica;
end;

Class Function CoDetalhesPagamentoTicketCarGestaoFrota.Create: IDetalhesPagamentoTicketCarGestaoFrota;
begin
  Result := CreateComObject(CLASS_DetalhesPagamentoTicketCarGestaoFrota) as IDetalhesPagamentoTicketCarGestaoFrota;
end;

Class Function CoDetalhesPagamentoTicketCarGestaoFrota.CreateRemote(const MachineName: string): IDetalhesPagamentoTicketCarGestaoFrota;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_DetalhesPagamentoTicketCarGestaoFrota) as IDetalhesPagamentoTicketCarGestaoFrota;
end;

Class Function CoMapTicketCarProductsResponse.Create: _MapTicketCarProductsResponse;
begin
  Result := CreateComObject(CLASS_MapTicketCarProductsResponse) as _MapTicketCarProductsResponse;
end;

Class Function CoMapTicketCarProductsResponse.CreateRemote(const MachineName: string): _MapTicketCarProductsResponse;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_MapTicketCarProductsResponse) as _MapTicketCarProductsResponse;
end;

Class Function CoMensagem.Create: IMensagem;
begin
  Result := CreateComObject(CLASS_Mensagem) as IMensagem;
end;

Class Function CoMensagem.CreateRemote(const MachineName: string): IMensagem;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_Mensagem) as IMensagem;
end;

Class Function CoProdutoTicketCar.Create: IProdutoTicketCar;
begin
  Result := CreateComObject(CLASS_ProdutoTicketCar) as IProdutoTicketCar;
end;

Class Function CoProdutoTicketCar.CreateRemote(const MachineName: string): IProdutoTicketCar;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_ProdutoTicketCar) as IProdutoTicketCar;
end;

Class Function CoRequisicaoProdutoTicketCar.Create: IRequisicaoProdutoTicketCar;
begin
  Result := CreateComObject(CLASS_RequisicaoProdutoTicketCar) as IRequisicaoProdutoTicketCar;
end;

Class Function CoRequisicaoProdutoTicketCar.CreateRemote(const MachineName: string): IRequisicaoProdutoTicketCar;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_RequisicaoProdutoTicketCar) as IRequisicaoProdutoTicketCar;
end;

Class Function CoRespostaProdutoTicketCar.Create: IRespostaProdutoTicketCar;
begin
  Result := CreateComObject(CLASS_RespostaProdutoTicketCar) as IRespostaProdutoTicketCar;
end;

Class Function CoRespostaProdutoTicketCar.CreateRemote(const MachineName: string): IRespostaProdutoTicketCar;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_RespostaProdutoTicketCar) as IRespostaProdutoTicketCar;
end;

Class Function CoRequisicaoParametro.Create: IRequisicaoParametro;
begin
  Result := CreateComObject(CLASS_RequisicaoParametro) as IRequisicaoParametro;
end;

Class Function CoRequisicaoParametro.CreateRemote(const MachineName: string): IRequisicaoParametro;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_RequisicaoParametro) as IRequisicaoParametro;
end;

Class Function CoRespostaOperacaoAprovada.Create: IRespostaOperacaoAprovada;
begin
  Result := CreateComObject(CLASS_RespostaOperacaoAprovada) as IRespostaOperacaoAprovada;
end;

Class Function CoRespostaOperacaoAprovada.CreateRemote(const MachineName: string): IRespostaOperacaoAprovada;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_RespostaOperacaoAprovada) as IRespostaOperacaoAprovada;
end;

Class Function CoRespostaOperacaoRecusada.Create: IRespostaOperacaoRecusada;
begin
  Result := CreateComObject(CLASS_RespostaOperacaoRecusada) as IRespostaOperacaoRecusada;
end;

Class Function CoRespostaOperacaoRecusada.CreateRemote(const MachineName: string): IRespostaOperacaoRecusada;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_RespostaOperacaoRecusada) as IRespostaOperacaoRecusada;
end;

Class Function CoDetalhesCrediario.Create: IDetalhesCrediario;
begin
  Result := CreateComObject(CLASS_DetalhesCrediario) as IDetalhesCrediario;
end;

Class Function CoDetalhesCrediario.CreateRemote(const MachineName: string): IDetalhesCrediario;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_DetalhesCrediario) as IDetalhesCrediario;
end;

Class Function CoDetalhesCredito.Create: IDetalhesCredito;
begin
  Result := CreateComObject(CLASS_DetalhesCredito) as IDetalhesCredito;
end;

Class Function CoDetalhesCredito.CreateRemote(const MachineName: string): IDetalhesCredito;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_DetalhesCredito) as IDetalhesCredito;
end;

end.
