/* cria o domínio descrição */

create domain descricao varchar(100) not null;

/* cria a tabela do usuário */

create table usuario(
ID_USUARIO  integer not null, 
NOME        descricao,
SENHA       varchar(30) not null,
TIPO        varchar(30) not null,
CADASTRO    date not null, 
constraint PK_USUARIO PRIMARY KEY(ID_USUARIO));

/* cria a tabela de empresa */

create table empresa(
ID_EMPRESA   integer not null, 
RAZAO_SOCIAL descricao,
N_FANTASIA   descricao,
ENDERECO     descricao,
NUMERO       integer not null,
BAIRRO       descricao,
CIDADE       descricao,
UF           char(2) not null,
TELEFONE     varchar(15) not null,
CNPJ         varchar(20) not null,
EMAIL        descricao,
CADASTRO     date not null, 
CEP          varchar(14) not null,
constraint PK_EMPRESA PRIMARY KEY(ID_EMPRESA));

/* cria a tabela de fornecedores */

create table fornecedor(
ID_FORNECEDOR   integer not null,
NOME            descricao,
ENDERECO        descricao,
NUMERO          integer not null,
BAIRRO          descricao,
CIDADE          descricao,
UF              char(2) not null,
CEP             varchar(16) not null,
TELEFONE        varchar(16) not null,
CNPJ            varchar(20) not null,
EMAIL           descricao,
CADASTRO        date not null, 
constraint PK_FORNECEDOR PRIMARY KEY(ID_FORNECEDOR));

/* cria a tabela de clientes */

create table cliente(
ID_CLIENTE      integer not null,
NOME            descricao,
ENDERECO        descricao,
NUMERO          integer not null,
BAIRRO          descricao,
CIDADE          descricao,
UF              char(2) not null,
CEP             varchar(16) not null,
TELEFONE        varchar(16) not null,
CPF             varchar(20) not null,
EMAIL           descricao,
CADASTRO        date not null, 
constraint PK_CLIENTE PRIMARY KEY(ID_CLIENTE));

/* cria a tabela de produtos */

create table produto(
ID_PRODUTO       integer not null,
PROD_DESCRICAO   descricao,
ID_FORNECEDOR    integer not null,
VL_CUSTO         decimal(11,2) not null, 
VL_VENDA         decimal(11,2) not null,
ESTOQUE          decimal(11,2) not null,
ESTOQUE_MIN      decimal(11,2) not null,
UNIDADE          varchar(6) not null,
CADASTRO         date not null, 
constraint PK_PRODUTO PRIMARY KEY(ID_PRODUTO),
constraint FK_FORNECEDOR_PRODUTO FOREIGN KEY(ID_FORNECEDOR) REFERENCES FORNECEDOR(ID_FORNECEDOR));

/* cria a tabela de formas de pagamento */

create table forma_pgto(
ID_FORMA_PGTO   integer not null,
PGTO_DESCRICAO  descricao,
CADASTRO        date not null,
constraint PK_FORMA_PGTO PRIMARY KEY(ID_FORMA_PGTO));

/* cria a tabela de compras */

create table compra(
ID_COMPRA       integer not null,
ID_FORNECEDOR   integer not null,
ID_FORMA_PGTO   integer not null,
USUARIO         descricao,
VALOR           decimal(11,2),
CADASTRO        date not null,
constraint PK_COMPRA PRIMARY KEY(ID_COMPRA),
constraint FK_FORNECEDOR_COMPRA FOREIGN KEY(ID_FORNECEDOR) REFERENCES FORNECEDOR(ID_FORNECEDOR),
constraint FK_FORMA_PGTO_COMPRA FOREIGN KEY(ID_FORMA_PGTO) REFERENCES FORMA_PGTO(ID_FORMA_PGTO));

/* cria a tabela de itens de compra */

create table item_compra(
ID_SEQUENCIA    integer not null,
ID_COMPRA       integer not null,
ID_PRODUTO      integer not null,
QTDE            decimal(11,2) not null,
VL_CUSTO        decimal(11,2) not null,
DESCONTO        decimal(11,2),
TOTAL_ITEM      decimal(11,2) not null, 
constraint PK_ITEM_COMPRA PRIMARY KEY(ID_SEQUENCIA, ID_COMPRA),
constraint FK_COMPRA_ITEM_COMPRA FOREIGN KEY(ID_COMPRA) REFERENCES COMPRA(ID_COMPRA),
constraint FK_PRODUTO_ITEM_COMPRA FOREIGN KEY(ID_PRODUTO) REFERENCES PRODUTO(ID_PRODUTO) ON DELETE CASCADE);

/* cria a tabela de contas a pagar */

create table contas_pagar(
ID_SEQUENCIA    integer not null,
ID_COMPRA       integer not null,
VALOR_PARCELA   decimal(11,2) not null,
DT_VENCIMENTO   date not null,
DT_PAGAMENTO    date,
ATRASO          integer,
JUROS           decimal(11,2),
VL_JUROS        decimal(11,2),
TOTAL_PAGAR     decimal(11,2),
STATUS          varchar(30),
constraint PK_CONTAS_PAGAR PRIMARY KEY(ID_SEQUENCIA, ID_COMPRA),
constraint FK_COMPRA_CONTAS_PAGAR FOREIGN KEY(ID_COMPRA) REFERENCES COMPRA(ID_COMPRA) ON DELETE CASCADE);

/*---*/

/* cria a tabela de vendas */

create table venda(
ID_VENDA    integer not null,
ID_CLIENTE    integer not null,
ID_FORMA_PGTO   integer not null,
USUARIO        descricao,
VALOR         decimal(11,2),
CADASTRO        date not null,
constraint PK_VENDA PRIMARY KEY(ID_VENDA),
constraint PK_CLIENTE_VENDA FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE),
constraint PK_FORMA_PGTO_VENDA FOREIGN KEY(ID_FORMA_PGTO) REFERENCES FORMA_PGTO(ID_FORMA_PGTO));

/* cria a tabela de itens de venda */

create table item_venda(
ID_SEQUENCIA    integer not null,
ID_VENDA        integer not null,
ID_PRODUTO      integer not null,
QTDE            decimal(11,2) not null,
VL_CUSTO        decimal(11,2) not null,
DESCONTO        decimal(11,2),
TOTAL_ITEM      decimal(11,2) not null, 
constraint PK_ITEM_VENDA PRIMARY KEY(ID_SEQUENCIA, ID_VENDA),
constraint FK_VENDA_ITEM_VENDA FOREIGN KEY(ID_VENDA) REFERENCES VENDA(ID_VENDA),
constraint FK_PRODUTO_ITEM_VENDA FOREIGN KEY(ID_PRODUTO) REFERENCES PRODUTO(ID_PRODUTO) ON DELETE CASCADE);

/* cria a tabela de contas a receber */

create table contas_receber(
ID_SEQUENCIA    integer not null,
ID_VENDA        integer not null,
VALOR_PARCELA   decimal(11,2) not null,
DT_VENCIMENTO   date not null,
DT_PAGAMENTO    date,
ATRASO          integer,
JUROS           decimal(11,2),
VL_JUROS        decimal(11,2),
TOTAL_PAGAR     decimal(11,2),
STATUS          varchar(30),
constraint PK_CONTAS_RECEBER PRIMARY KEY(ID_SEQUENCIA, ID_VENDA),
constraint FK_COMPRA_CONTAS_RECEBER FOREIGN KEY(ID_VENDA) REFERENCES VENDA(ID_VENDA) ON DELETE CASCADE);

