{--------------------------------------------------------}
{
{    Variaveis globais do EDIVOX
{
{    Autor: Marcelo Luis Pinheiro
{
{    Orientador Academico: Jose' Antonio Borges
{
{    Em 10/12/93
{
{--------------------------------------------------------}

Unit edVars;

interface
uses Classes;

const
    VERSAO = '7.0';
    ALFABETA = '';

type
    Frase = string;
    TipoTexto = TStringList;
    TCodif = (C_ANSI, C_UTF8, C_UNICODE, C_UNICODE_BIG);

var
    Texto : TipoTexto;          { o texto em si }
    maxLinhas: integer;          { quantas linhas preenchidas }

    posx, posy: integer;         { posicao do cursor no texto }
    margesq, margdir: integer;   { margens }
    inibloco, fimbloco: integer; { posicao do bloco marcado }
    novoini: integer;

    mudo,                        { totalmente calado }
    soletrando,                  { soletragem acionada }
    falandoPalavra,                  { falar palavra acionada }
    enterInsLinha,               { enter insere linha }
    quebraAuto,                  { quebra automatica ao fim da linha }
    falaPontuacao,               { fala pontua��o }
    falaEspacos ,                { fala n�mero de espa�os na frente}
    rapidinho: boolean;          { fala sintetica rapida }
    autoFala: boolean;           { ao mudar de linha, fala }
    extPadrao: string;           { extens�o padr�o do arquivo}

    nomeArq : string;            { nome do arquivo editado }
    buscado : string;            { texto em busca }
    linhaRemovida: string;       { ultima linha removida }
    statusTecControle: word;     { status das teclas shift, control, etc }

    deslocEsqTela: integer;      { deslocamento durante a escrita }
    tamMaxLinha: integer;        { tamanho da linha para certa resolucao }
    corLetra, corFundo: integer; { cores de tracado }

    salvaCurx,                   { posicao salva do cursor }
    salvaCury: integer;

    ntabs: integer;              { numero de tabulacoes marcadas }
    tabs: array [1..30] of integer; { tabulacoes }

    dirSomEdivox: string;        { diretorio de mensagens do Edivox }

    dicCarregado: boolean;       { dicion�rio est� carregado }
    nomeArqDic,                  { arquivo do dicion�rio }
    nomeArqSufixos,              { sufixos }
    nomeArqInexist,              { palavras for�adas como erradas }
    nomeArqNomes,                { nomes pr�prios e siglas }
    nomeArqSugTroca: string;     { sugest�es de troca }

    dicionarioAtivado: boolean;  { dicionario online ativado}
    corrigirTodoTexto: boolean;  {Corrige todo o texto no CTRL w}
    retomarNaLinha: boolean;
    iniMarca, fimMarca: integer; { trecho marcado na linha }
    somenteLeitura: boolean;     { j� inicia lendo, nem pergunta se grava }
    informaCarga: boolean;       { informa ou n�o se arquivo carregado }
    veioDoDos: boolean;          { arquivo veio com op��o /D }
    comTabs: boolean; { Processa o caractere tab como tab e n�o espa�o }

    escreveApenasTexto: boolean;
    modoFalaFormatacao: char;
    comSapi: boolean;
    ansiUtfUnicode: TCodif;

    fatorAmpl: integer;          { fator de amplia��o para baixa vis�o }
    tamanhoTab: integer;

{--------------------------------------------------------}

const
    F1   = #59;
    F2   = #60;
    F3   = #61;
    F4   = #62;
    F5   = #63;
    F6   = #64;
    F7   = #65;
    F8   = #66;
    F9   = #67;
    F10  = #68;

    INS  = #82;
    DEL  = #83;
    HOME = #71;
    TEND = #79;
    PGUP = #73;
    PGDN = #81;
    CIMA = #72;
    BAIX = #80;
    ESQ  = #75;
    DIR  = #77;

    BS   = #08;

    CTLENTER = #10;

    CTLPGUP = #132;
    CTLPGDN = #118;
    CTLESQ  = #115;
    CTLDIR  = #116;

    CTLHOME = #119;
    CTLEND  = #117;

    CTLF1   = #94;
    CTLF2   = #95;
    CTLF4   = #97;
    CTLF5   = #98;
    CTLF8   = #101;
    CTLF9   = #102;
    CTLF10  = #103;

    ALTF1   = #104;

    CTLBS   = #127;

    CONTROL = 4;

implementation
end.
