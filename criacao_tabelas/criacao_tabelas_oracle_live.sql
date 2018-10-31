--create schema if not exists barbar;
drop table  Gerente;
drop table  Promo_Produto;
drop table  Promocao;
drop table  Cadastra_club;
drop table  Dependente;
drop table  Compor;
drop table  Cadastra;
drop table  Metas_func;
drop table  Salario_func;

drop table  drinks_barm;
drop table  cortes_barb;
drop table  telefone_forn;
drop table  enderecos_forn;
drop table  telefone_cli;
drop table  email_cli;

drop table  Comprar;
drop table  Usufrui;
drop table  Cadastra_relclub;
drop table  Vende;
drop table  Atende;
drop table  Barman;
drop table  Barbeiro;
drop table  Funcionario;
drop table  Promocao_Data;
drop table  Fornecedor;
drop table  Produtos;
drop table  Cliente;
drop table  Loja;

--criação das tabelas das relações 1 até 7
CREATE TABLE loja(
    cnpj VARCHAR2(14) NOT NULL,
    nome VARCHAR2(30) NOT NULL,
    cep VARCHAR2(8) NOT NULL,
    rua VARCHAR2(30) NOT NULL,
    numero NUMBER NOT NULL,
    complemento VARCHAR2(30),
    CONSTRAINT Loja_pk PRIMARY KEY (cnpj),
    CONSTRAINT Loja_cnpj_ck CHECK (cnpj LIKE '______________'),
    CONSTRAINT Loja_cep_ck CHECK (cep LIKE '________')
);
CREATE TABLE Cliente (
    cpf VARCHAR2(11) NOT NULL,
    nome VARCHAR2(30) NOT NULL,
	data_nasc DATE NOT NULL,
    cep VARCHAR2(8) NOT NULL,   
    rua VARCHAR2(30) NOT NULL,
    complemento VARCHAR2(30),
    CONSTRAINT Cliente_pk PRIMARY KEY (cpf),
    CONSTRAINT Cliente_cpf_ck CHECK (cpf LIKE '___________'), 
    CONSTRAINT Cliente_cep_ck CHECK (cep LIKE '________')
);

CREATE TABLE Produtos (
    id NUMERIC NOT NULL,
    nome VARCHAR2(30) NOT NULL,
    valor_compra NUMBER(10,2) NOT NULL,
    valor_venda NUMBER(10,2) NOT NULL,
    CONSTRAINT Produtos_pk PRIMARY KEY (id)
);
CREATE TABLE Fornecedor (
    cnpj_forn VARCHAR2(14) NOT NULL,
    nome VARCHAR2(30) NOT NULL,
	CONSTRAINT Fornecedor_pk PRIMARY KEY (cnpj_forn),
	CONSTRAINT Fornecedor_cnpj_forn_ck CHECK (cnpj_forn LIKE '______________')
);
CREATE TABLE Promocao_Data (
    data_inicial DATE,
    desconto DECIMAL(3,1),
    duracao DATE,
    CONSTRAINT Promoção_Data_pk PRIMARY KEY (data_inicial)
);

CREATE TABLE Funcionario (
    cpf VARCHAR2(11) NOT NULL,
    cnpj_loja VARCHAR2(14) NOT NULL,
    nome VARCHAR2(30) NOT NULL,
    curriculo VARCHAR2(500) NOT NULL,
    CONSTRAINT Funcionario_pk PRIMARY KEY (cpf),
    CONSTRAINT Funcionario_cnpj_loja_fk FOREIGN KEY (cnpj_loja) REFERENCES Loja(cnpj),
    CONSTRAINT Funcionario_cpf_ck CHECK (cpf LIKE '___________'),
    CONSTRAINT Funcionario_cnpj_ck CHECK (cnpj_loja LIKE '______________')
);

CREATE TABLE Gerente(
		cpf_func VARCHAR2(11) NOT NULL,
		CONSTRAINT gerente_pk PRIMARY KEY (cpf_func),
		CONSTRAINT gerente_cpf_func_fk FOREIGN KEY (cpf_func) REFERENCES funcionario(cpf),
		CONSTRAINT gerente_cpf_func_ck CHECK (cpf_func LIKE '___________')
);

CREATE TABLE Promocao(
  		id_produto NUMBER NOT NULL,
  		cnpj_loja VARCHAR2(14) NOT NULL,
  		cpf_cliente VARCHAR2(11) NOT NULL,
  		CONSTRAINT Promocao_pk PRIMARY KEY (id_produto, cnpj_loja, cpf_cliente),
  		CONSTRAINT Promocao_id_produto_fk FOREIGN KEY (id_produto) REFERENCES Produtos(id),
  		CONSTRAINT Promocao_cnpj_loja_fk FOREIGN KEY (cnpj_loja) REFERENCES Loja(cnpj),
  		CONSTRAINT Promocao_cpf_cliente_fk FOREIGN KEY (cpf_cliente) REFERENCES Cliente(cpf),
		CONSTRAINT Promocao_cpf_cliente_ck CHECK (cpf_cliente LIKE '___________'),
		CONSTRAINT Promocao_cnpj_loja_ck CHECK (cnpj_loja LIKE '______________') 
);
CREATE TABLE Promo_Produto (
    id_data DATE,
    id_produto NUMBER,
    CONSTRAINT Promo_Produto_pk PRIMARY KEY (id_data, id_produto),
    CONSTRAINT Promo_Produto_id_produto_fk FOREIGN KEY (id_produto) REFERENCES Produtos(id),
    CONSTRAINT Promo_Produto_id_data_fk FOREIGN KEY (id_data) REFERENCES Promocao_Data(data_inicial)
);

--criação das tabelas das relações 8 até 14

CREATE TABLE Cadastra_club(
  		cpf_cliente VARCHAR2(11) NOT NULL,
  		cpf_funcionario VARCHAR2(11) NOT NULL,
  		cnpj_loja VARCHAR2(14) NOT NULL,
  		mensalidade NUMBER NOT NULL,
		CONSTRAINT Cadastra_club_pk PRIMARY KEY (cpf_cliente, cpf_funcionario, cnpj_loja),
  		CONSTRAINT Cadastra_club_cpf_funcionario_fk FOREIGN KEY (cpf_funcionario) REFERENCES Funcionario(cpf),
  		CONSTRAINT Cadastra_club_cnpj_loja_fk FOREIGN KEY (cnpj_loja) REFERENCES Loja(cnpj),
  		CONSTRAINT Cadastra_club_cpf_cliente_fk FOREIGN KEY (cpf_cliente) REFERENCES Cliente(cpf),
		CONSTRAINT Cadastra_club_cpf_cliente_ck CHECK (cpf_cliente LIKE '___________'),
		CONSTRAINT Cadastra_club_cpf_funcionario_ck CHECK (cpf_cliente LIKE '___________'),
		CONSTRAINT Cadastra_club_cnpj_loja_ck CHECK (cnpj_loja LIKE '______________') 
);
CREATE TABLE Dependente(
		cpf_cliente VARCHAR2(11) NOT NULL,
		nome VARCHAR2(30) NOT NULL,
		data_nasc DATE NOT NULL,
		CONSTRAINT Dependente_pk PRIMARY KEY (cpf_cliente,nome),
		CONSTRAINT Dependente_cpf_cliente_fk FOREIGN KEY (cpf_cliente) REFERENCES Cliente(cpf),
		CONSTRAINT Dependente_cpf_cliente_ck CHECK (cpf_cliente LIKE '___________')
);
CREATE TABLE Compor(
		id_compoe NUMBER,
		id_composto NUMBER,
		CONSTRAINT compor_pk PRIMARY KEY (id_compoe, id_composto),
		CONSTRAINT compor_id_compoe_fk FOREIGN KEY (id_compoe) REFERENCES Produtos(id),
		CONSTRAINT compor_id_composto_fk FOREIGN KEY (id_composto) REFERENCES Produtos(id)
);
CREATE TABLE Cadastra(
		cpf_funcionario VARCHAR2(11) NOT NULL,
		cpf_cliente VARCHAR2(11) NOT NULL,
		CONSTRAINT Cadastra_pk PRIMARY KEY (cpf_cliente, cpf_funcionario),
		CONSTRAINT Cadastra_cpf_funcionario_fk FOREIGN KEY (cpf_funcionario) REFERENCES funcionario(cpf),
		CONSTRAINT Cadastra_cpf_cliente_fk FOREIGN KEY (cpf_cliente) REFERENCES Cliente(cpf),
		CONSTRAINT Cadastra_cpf_cliente_ck CHECK (cpf_cliente LIKE '___________'),
		CONSTRAINT Cadastra_cpf_funcionario_ck CHECK (cpf_cliente LIKE '___________')
		
);
CREATE TABLE Metas_func(
		cpf_funcionario VARCHAR2(11) NOT NULL,
		bonus NUMBER,
		data_atribuicao DATE NOT NULL,
		descricao VARCHAR2(500) NOT NULL,
		CONSTRAINT Metas_func_pk PRIMARY KEY (cpf_funcionario),
		CONSTRAINT Metas_func_cpf_funcionario_fk FOREIGN KEY (cpf_funcionario) REFERENCES Funcionario(cpf),
		CONSTRAINT Metas_func_cpf_funcionario_ck CHECK (cpf_funcionario LIKE '___________')
);
CREATE TABLE Salario_func(
		cpf_funcionario VARCHAR2(11),
		valor NUMBER,
		data_atribuicao DATE NOT NULL,
		CONSTRAINT Salario_func_pk PRIMARY KEY (cpf_funcionario),
		CONSTRAINT Salario_func_cpf_funcionario_fk FOREIGN KEY (cpf_funcionario) REFERENCES Funcionario(cpf),
		CONSTRAINT Salario_func_cpf_cliente_ck CHECK (cpf_funcionario LIKE '___________')

);

--criação das tabelas das relações 15 até 20 
CREATE TABLE drinks_barm (
    cpf_funcionario VARCHAR2(11),
    drink VARCHAR2(30),
    CONSTRAINT funcionario_cpf_fk FOREIGN KEY (cpf_funcionario) REFERENCES funcionario(cpf),
    CONSTRAINT drinks_barm_cpf_funcionario_ck CHECK (cpf_funcionario LIKE '___________')
);

CREATE TABLE cortes_barb (
    cpf_funcionario VARCHAR2(11),
    corte VARCHAR2(30),
    CONSTRAINT cortes_cpf_funcionario_fk FOREIGN KEY (cpf_funcionario) REFERENCES funcionario(cpf),
    CONSTRAINT cortes_barb_cpf_funcionario_ck CHECK (cpf_funcionario LIKE '___________')
);

CREATE TABLE telefone_forn (
    cnpj_fornecedor VARCHAR2(14),
    telefone NUMBER,
    CONSTRAINT fornecedor_cnpj_fk FOREIGN KEY (cnpj_fornecedor) REFERENCES fornecedor(cnpj_forn),
    CONSTRAINT telefone_forn_cnpj_fornecedor_ck CHECK (cnpj_fornecedor LIKE '______________')
);

CREATE TABLE enderecos_forn (
    cnpj_fornecedor VARCHAR2(14),
    rua VARCHAR2(30),
    cep VARCHAR2(30),
    numero VARCHAR2(30),
    CONSTRAINT enderecos_cnpj_fornecedor_fk FOREIGN KEY (cnpj_fornecedor) REFERENCES fornecedor(cnpj_forn),
    CONSTRAINT enderecos_forn_cnpj_fornecedor_ck CHECK (cnpj_fornecedor LIKE '______________'),
    CONSTRAINT enderecos_forn_cep_ck CHECK (cep LIKE '________')
);

CREATE TABLE telefone_cli (
    cpf_cliente VARCHAR2(11),
    telefone NUMBER,
    CONSTRAINT cli_cpf_fk FOREIGN KEY (cpf_cliente) REFERENCES Cliente(cpf),
    CONSTRAINT telefone_cli_cpf_funcionario_ck CHECK (cpf_cliente LIKE '___________')
);

CREATE TABLE email_cli (
    cpf_cliente VARCHAR2(11),
    email VARCHAR2(30),
    CONSTRAINT email_cli_cpf_cliente_fk FOREIGN KEY (cpf_cliente) REFERENCES Cliente(cpf),
    CONSTRAINT email_cli_cpf_funcionario_ck CHECK (cpf_cliente LIKE '___________')
);


--criação das tabelas das relações 21 até 29
CREATE TABLE Comprar(
		id_prod NUMBER,
		cnpj_fornecedor VARCHAR2(14),
		cpf_funcionario VARCHAR2(11),
		data_compra DATE NOT NULL,
		quant_compra NUMBER,
		CONSTRAINT Comprar_pk PRIMARY KEY (id_prod, cnpj_fornecedor, cpf_funcionario),
		CONSTRAINT Comprar_id_prod_fk FOREIGN KEY (id_prod) REFERENCES Produtos(id),
		CONSTRAINT Comprar_cnpj_fornecedor_fk FOREIGN KEY (cnpj_fornecedor) REFERENCES Fornecedor(cnpj_forn),
		CONSTRAINT Comprar_cpf_funcionario_fk FOREIGN KEY (cpf_funcionario) REFERENCES Funcionario(cpf),
		CONSTRAINT Comprar_cpf_funcionario_ck CHECK (cpf_funcionario LIKE '___________'),
		CONSTRAINT Comprar_cnpj_fornecedor_ck CHECK (cnpj_fornecedor LIKE '______________')
);
CREATE TABLE Usufrui(
		id_prod NUMBER,
		cpf_cliente VARCHAR2(11),
		CONSTRAINT Usufrui_pk PRIMARY KEY (id_prod, cpf_cliente),
		CONSTRAINT Usufrui_id_prod_fk FOREIGN KEY (id_prod) REFERENCES Produtos(id),
		CONSTRAINT Usufrui_cpf_cliente_fk FOREIGN KEY (cpf_cliente) REFERENCES Cliente(cpf),
		CONSTRAINT Usufrui_cpf_cliente_ck CHECK (cpf_cliente LIKE '___________')
);


CREATE TABLE Cadastra_relclub(
		cpf_cliente VARCHAR2(11) NOT NULL,
		cpf_funcionario VARCHAR2(11),
		cnpj_loja VARCHAR2(14) NOT NULL,
		CONSTRAINT cadastra_relclub_pk PRIMARY KEY (cpf_cliente,cpf_funcionario,cnpj_loja),
		CONSTRAINT cadastra_relclub_cpf_cliente_fk FOREIGN KEY (cpf_cliente) REFERENCES Cliente(cpf),
		CONSTRAINT cadastra_relclub_cpf_funcionario_fk FOREIGN KEY (cpf_funcionario) REFERENCES Funcionario(cpf),
		CONSTRAINT cadastra_relclub_cnpj_loja_fk FOREIGN KEY (cnpj_loja) REFERENCES Loja(cnpj),
		CONSTRAINT cadastra_relclub_cpf_cliente_ck CHECK (cpf_cliente LIKE '___________'),
		CONSTRAINT cadastra_relclub_cpf_funcionario_ck CHECK (cpf_funcionario LIKE '___________'),
		CONSTRAINT cadastra_relclub_cnpj_loja_ck CHECK (cnpj_loja LIKE '______________')
);

CREATE TABLE Barman(
		cpf_func VARCHAR2(11) NOT NULL,
		CONSTRAINT barman_pk PRIMARY KEY (cpf_func),
		CONSTRAINT barman_cpf_func_fk FOREIGN KEY (cpf_func) REFERENCES funcionario(cpf),
		CONSTRAINT barman_cpf_func_ck CHECK (cpf_func LIKE '___________')
);
CREATE TABLE Barbeiro(
		cpf_func VARCHAR2(11)NOT NULL,
		CONSTRAINT barbeiro_pk PRIMARY KEY (cpf_func),
		CONSTRAINT barbeiro_cpf_func_fk FOREIGN KEY (cpf_func) REFERENCES funcionario(cpf),
		CONSTRAINT barbeiro_cpf_func_ck CHECK (cpf_func LIKE '___________')
);	
CREATE TABLE Atende(
		id_prod NUMBER,
		cpf_barb VARCHAR2(11),
		cpf_cliente VARCHAR2(11),
		data_atend DATE NOT NULL,
		CONSTRAINT Atende_pk PRIMARY KEY (id_prod,cpf_barb,cpf_cliente),
		CONSTRAINT Atende_id_prod_fk FOREIGN KEY (id_prod) REFERENCES Produtos(id),
		CONSTRAINT Atende_barb_fk FOREIGN KEY (cpf_barb) REFERENCES Funcionario(cpf),
		CONSTRAINT Atende_cpf_cliente_fk FOREIGN KEY (cpf_cliente) REFERENCES Cliente(cpf),
		CONSTRAINT Atende_cpf_cliente_ck CHECK (cpf_cliente LIKE '___________'),
		CONSTRAINT Atende_barb_ck CHECK (cpf_barb LIKE '___________')
);

CREATE TABLE Vende(
		id_prod NUMBER NOT NULL,
		cpf_barman VARCHAR2(11) NOT NULL,
		cpf_cliente VARCHAR2(11),
		data_venda DATE NOT NULL,
		quant_vend NUMBER NOT NULL,
		CONSTRAINT Vende_pk PRIMARY KEY (id_prod,cpf_barman,cpf_cliente),
		CONSTRAINT Vende_id_prod_fk FOREIGN KEY (id_prod) REFERENCES Produtos(id),
		CONSTRAINT Vende_cpf_barman_fk FOREIGN KEY (cpf_barman) REFERENCES Funcionario(cpf),
		CONSTRAINT Vende_cpf_cliente_fk FOREIGN KEY (cpf_cliente) REFERENCES Cliente(cpf),
		CONSTRAINT Vende_cpf_cliente_ck CHECK (cpf_cliente LIKE '___________'),
		CONSTRAINT Vende_cpf_barman_ck CHECK (cpf_barman LIKE '___________')
);