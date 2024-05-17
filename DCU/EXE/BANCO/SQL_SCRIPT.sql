/* cria a tabela de usuario*/
CREATE TABLE USUARIO(
 ID_USUARIO     INTEGER NOT NULL,
 NOME           DESCRICAO, 
 SENHA          VARCHAR(30) NOT NULL,
 TIPO           VARCHAR(30) NOT NULL,
 CADASTRO       DATE NOT NULL,
 CONSTRAINT PK_USUARIO PRIMARY KEY(ID_USUARIO));
 
 /* CRIA A TABELA DE EMPRESA */
 CREATE TABLE EMPRESA(
  ID_EMPRESA        INTEGER NOT NULL,
  RAZA_SOCIAL       DESCRICAO,
  N_FANTASIA        DESCRICAO,
  ENDERECO          DESCRICAO,
  NUMERO            INTEGER NOT NULL,
  BAIRRO            DESCRICAO,
  CIDADE            DESCRICAO,
  UF                CHAR(2) NOT NULL,
  TELEFONE          VARCHAR(15) NOT NULL,
  CNPJ              VARCHAR(20) NOT NULL,
  EMAIL             DESCRICAO,
  CADASTRO          DATE NOT NULL,
  CONSTRAINT PK_EMPRESA PRIMARY KEY(ID_EMPRESA)); 
  
  /* CRIA A TABELA DE FORNECEDORES */
  CREATE TABLE FORNECEDOR(
  ID_FORNECEDOR     INTEGER NOT NULL,
  NOME              DESCRICAO,
  ENDERECO          DESCRICAO,
  NUMERO            INTEGER NOT NULL,
  BAIRRO            DESCRICAO,
  CIDADE            DESCRICAO,
  UF                CHAR(2) NOT NULL,
  CEP               VARCHAR(16)NOT NULL,
  TELEFONE          VARCHAR(16) NOT NULL,
  CNPJ              VARCHAR(20) NOT NULL,
  EMAIL             DESCRICAO,
  CADASTRO          DATE NOT NULL,
  CONSTRAINT PK_FORNECEDOR PRIMARY KEY(ID_FORNECEDOR));
  
  /* CRIA A TABELA DE CLIENTES*/
  CREATE TABLE CLIENTE(
  ID_CLIENTE     INTEGER NOT NULL,
  NOME              DESCRICAO,
  ENDERECO          DESCRICAO,
  NUMERO            INTEGER NOT NULL,
  BAIRRO            DESCRICAO,
  CIDADE            DESCRICAO,
  UF                CHAR(2) NOT NULL,
  CEP               VARCHAR(16)NOT NULL,
  TELEFONE          VARCHAR(16) NOT NULL,
  CPF               VARCHAR(16) NOT NULL,
  EMAIL             DESCRICAO,
  CADASTRO          DATE NOT NULL,
  CONSTRAINT PK_CLIENTE PRIMARY KEY(ID_CLIENTE));
  
  /* CRIA  A TABELA DE PRODUTO */
  CREATE TABLE PRODUTO(
  ID_PRODUTO            INTEGER NOT NULL,
  PRODUTO_DESCRICAO     DESCRICAO,
  ID_FORNECEDOR         INTEGER NOT NULL,
  VL_CUSTO              DECIMAL(11,2) NOT NULL,
  VL_VENDA              DECIMAL(11,2) NOT NULL,
  ESTOQUE               DECIMAL(11,2) NOT NULL,
  ESTOQUE_MIN           DECIMAL(11,2) NOT NULL,
  UNIDADE               VARCHAR(6),
  CADASTRO              DATE NOT NULL,
  CONSTRAINT PK_PRODUTO PRIMARY KEY(ID_PRODUTO),
  CONSTRAINT FK_FORNECEDOR_PRODUTO FOREIGN KEY(ID_FORNECEDOR) REFERENCES FORNECEDOR(ID_FORNECEDOR ));
  
  /* CRIA A TABELA DE FORMA DE PAGAMENTO*/
  CREATE TABLE FORMA_PGTO(
   ID_FORMA_PGTO        INTEGER NOT NULL,
   DESCRICAO            DESCRICAO,
   CADASTRO            DATE NOT NULL,
   CONSTRAINT PK_FORMA_PGTO PRIMARY KEY(ID_FORMA_PGTO)
  );
  
  /* CRIA A TABELA DE COMPRA */
  CREATE TABLE COMPRA(
   ID_COMPRA        INTEGER NOT NULL,
   ID_FORNECEDOR    INTEGER NOT NULL,
   ID_FORMA_PGTO    INTEGER NOT NULL,
   USUARIO          DESCRICAO,
   VALOR            DECIMAL(11,2),
   CADASTRO         DATE NOT NULL,
   CONSTRAINT PK_COMPRA PRIMARY KEY(ID_COMPRA),
   CONSTRAINT FK_FORNECEDOR_COMPRA FOREIGN KEY(ID_FORNECEDOR) REFERENCES FORNECEDOR(ID_FORNECEDOR),
   CONSTRAINT FK_FORMA_PGTO_COMPRA FOREIGN KEY(ID_FORMA_PGTO) REFERENCES FORMA_PGTO(ID_FORMA_PGTO));
   
   /* CRIA A TABELA DE ITENS DE COMPRA*/
   CREATE TABLE ITEM_COMPRA(
   ID_SEQUENCIA     INTEGER NOT NULL,
   ID_COMPRA        INTEGER NOT NULL,
   ID_PRODUTO       INTEGER NOT NULL,
   QTDE             DECIMAL(11,2) NOT NULL,
   VL_CUSTO         DECIMAL(11,2) NOT NULL,
   DESCONTO         DECIMAL(11,2),
   TOTAL_ITEM       DECIMAL(11,2)NOT NULL,
   CONSTRAINT PK_ITEM_COMPRA PRIMARY KEY(ID_SEQUENCIA,ID_COMPRA),
   CONSTRAINT FK_COMPRA_ITEM_COMPRA FOREIGN KEY(ID_COMPRA) REFERENCES COMPRA(ID_COMPRA),
   CONSTRAINT FK_PRODUTO_ITEM_COMPRA FOREIGN KEY(ID_PRODUTO) REFERENCES PRODUTO(ID_PRODUTO) ON DELETE CASCADE);
   
   /* CRIA A TABELA DE CONTAS A PAGAR */
   CREATE TABLE CONTAS_PAGAR(
   ID_SEQUENCIA       INTEGER NOT NULL,
   ID_COMPRA          INTEGER NOT NULL,
   VALOR_PARCELA      DECIMAL(11,2) NOT NULL,
   DT_VENCIMENTO      DATE NOT NULL,
   DT_PAGAMENTO       DATE,
   ATRASO             INTEGER,
   JUROS              DECIMAL(11,2),
   VL_JUROS           DECIMAL(11,2),
   TOTAL_PAGAR        DECIMAL(11,2),
   STATUS             VARCHAR(30),
   CONSTRAINT PK_CONTAS_PAGAR PRIMARY KEY(ID_SEQUENCIA,ID_COMPRA),
   CONSTRAINT FK_COMPRA_CONTAS_PAGAR FOREIGN KEY(ID_COMPRA) REFERENCES COMPRA(ID_COMPRA) ON DELETE CASCADE);
   
  /*--------------------------------------------------------------------------------------------------------------*/ 
  
  /* CRIA A TABELA DE venda*/
  CREATE TABLE VENDA(
   ID_VENDA         INTEGER NOT NULL,
   ID_CLIENTE       INTEGER NOT NULL,
   ID_FORMA_PGTO    INTEGER NOT NULL,
   USUARIO          DESCRICAO,
   VALOR            DECIMAL(11,2),
   CADASTRO         DATE NOT NULL,
   CONSTRAINT PK_VENDA PRIMARY KEY(ID_VENDA),
   CONSTRAINT FK_CLIENTE_VENDA FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE),
   CONSTRAINT FK_FORMA_PGTO_VENDA FOREIGN KEY(ID_FORMA_PGTO) REFERENCES FORMA_PGTO(ID_FORMA_PGTO));
   
   /* CRIA A TABELA DE ITENS DE COMPRA*/
   CREATE TABLE ITEM_VENDA(
   ID_SEQUENCIA     INTEGER NOT NULL,
   ID_VENDA         INTEGER NOT NULL,
   ID_PRODUTO       INTEGER NOT NULL,
   QTDE             DECIMAL(11,2) NOT NULL,
   VL_CUSTO         DECIMAL(11,2) NOT NULL,
   DESCONTO         DECIMAL(11,2),
   TOTAL_ITEM       DECIMAL(11,2)NOT NULL,
   CONSTRAINT PK_ITEM_VENDA PRIMARY KEY(ID_SEQUENCIA,ID_VENDA),
   CONSTRAINT FK_VENDA_ITEM_VENDA FOREIGN KEY(ID_VENDA) REFERENCES VENDA(ID_VENDA),
   CONSTRAINT FK_PRODUTO_ITEM_VENDA FOREIGN KEY(ID_PRODUTO) REFERENCES PRODUTO(ID_PRODUTO) ON DELETE CASCADE);
   
   /* CRIA A TABELA DE CONTAS A PAGAR */
   CREATE TABLE CONTAS_RECEBER(
   ID_SEQUENCIA       INTEGER NOT NULL,
   ID_VENDA           INTEGER NOT NULL,
   VALOR_PARCELA      DECIMAL(11,2) NOT NULL,
   DT_VENCIMENTO      DATE NOT NULL,
   DT_PAGAMENTO       DATE,
   ATRASO             INTEGER,
   JUROS              DECIMAL(11,2),
   VL_JUROS           DECIMAL(11,2),
   TOTAL_PAGAR        DECIMAL(11,2),
   STATUS             VARCHAR(30),
   CONSTRAINT PK_CONTAS_RECEBER PRIMARY KEY(ID_SEQUENCIA,ID_VENDA),
   CONSTRAINT FK_VENDA_CONTAS_RECEBER FOREIGN KEY(ID_VENDA) REFERENCES VENDA(ID_VENDA) ON DELETE CASCADE);
   
   
   
   
   
  
   
   
   
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

