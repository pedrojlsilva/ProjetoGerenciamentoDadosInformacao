-- Diego 1 a 7
 --INSERINDO Loja 

INSERT INTO Loja (cnpj,nome,cep,rua,numero,complemento) VALUES ('11999111999911','Barber Shop Modern Man Concept',51110130,'Av República do Líbano',250,'Piso L2  Loja  14');
INSERT INTO Loja (cnpj,nome,cep,rua,numero,complemento) VALUES ('99111999111199','Barber Shop Modern Man',52220220,'Rua dos Barbeiro',010,'Galeria  Loja  0');


 --INSERINDO Cliente 


INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000001','Diego Matos',TO_DATE('1980-01-01','yyyy/mm/dd'),'55111500','Rua da Fortuna','casa');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000002','Hugo Abreu',TO_DATE('1982-02-02','yyyy/mm/dd'),'55222502','Rua do Barão','apartamento');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000003','Gustavo Camargo',TO_DATE('1983-03-03','yyyy/mm/dd'),'55333503', 'Rua Vale do Silício','Casa');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000004','Pedro Jorge', TO_DATE('1984-04-04','yyyy/mm/dd'),'55444504','Rua do Sucesso','apartamento');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000005','Zeze di Camargo',TO_DATE('1985-05-15','yyyy/mm/dd'),'55555505','Rua do Cantor','fazenda');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000006','Luciano Hulk',TO_DATE('1986-06-06','yyyy/mm/dd'),'55666506','Rua da Apresentação','casa');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000007','Rafael Bastos',TO_DATE('1992-02-16','yyyy/mm/dd'),'55777507','Rua do Humor','apartamento');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000008','Jair Bolsonaro',TO_DATE('1993-11-26','yyyy/mm/dd'),'55888508','Rua do Presidente','apartamento');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000009','Luís Inácio Lula da Silva',TO_DATE('1986-06-06','yyyy/mm/dd'),'55999509','Rua dos Encarcerados','pousada');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000010','Donald Trump',TO_DATE('1986-05-24','yyyy/mm/dd'),'55000510','Rua do Liberalismo','apartamento');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000011','Jorge W Bush',TO_DATE('1994-06-06','yyyy/mm/dd'),'55111510','Rua do Tiro','apartamento');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000012','Barack Obama',TO_DATE('1999-09-09','yyyy/mm/dd'),'55222512','Rua da Conquista','casa');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000013','Neymar Junior KaiKai',TO_DATE('1998-08-08','yyyy/mm/dd'),'55333513','Rua do Sabão','casa');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000014','Lionel Messi',TO_DATE('1997-06-06','yyyy/mm/dd'),'55444514','Rua do Astro','casa');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000015','Morgan Freeman',TO_DATE('1996-07-06','yyyy/mm/dd'),'55555515','Rua do Artista','casa');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000016','Rodrigo Faro',TO_DATE('2000-12-12','yyyy/mm/dd'),'55666516','Rua da Fama','casa');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000017','Carlos Alberto',TO_DATE('1979-10-01','yyyy/mm/dd'),'55777517','Rua do Riso','apartamento');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000018','Fausto Silva',TO_DATE('1978-03-27','yyyy/mm/dd'),'55888518','Rua da Interação','apartamento');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000019','Anísio Brasileiro',TO_DATE('1999-08-10','yyyy/mm/dd'),'55999519','Rua do Reitor','apartamento');
INSERT INTO Cliente (cpf,nome,data_nasc,cep,rua,complemento) VALUES ('01100000020','Magnata da Rocha',TO_DATE('2000-01-06','yyyy/mm/dd'),'55000520','Rua do Medo','casa');

 --INSERINDO Funcionario 
-- 4 primeiors são barman s
-- 4 depois são barbeiro s
-- 2 depois são funcionários normais
-- 2 ultimos são gerente s

INSERT INTO Funcionario (cpf,cnpj_loja,nome,curriculo) VALUES ('22200000001','11999111999911','Daniel Carvalho do Nascimento', ' 2 anos de experiencia');
INSERT INTO Funcionario (cpf,cnpj_loja,nome,curriculo) VALUES ('22200000002','99111999111199','Arthur Luiz de Jesus', '3 anos de experiencia');
INSERT INTO Funcionario (cpf,cnpj_loja,nome,curriculo) VALUES ('22200000003','11999111999911','José de Lima Albuquerque', '5 anos de experiencia');
INSERT INTO Funcionario (cpf,cnpj_loja,nome,curriculo) VALUES ('22200000004','99111999111199','João Henrique dos Santos', 'sem experiencia');
INSERT INTO Funcionario (cpf,cnpj_loja,nome,curriculo) VALUES ('22200000005','11999111999911','Diogo Rafael da Silva', ' 2 anos de experiencia');
INSERT INTO Funcionario (cpf,cnpj_loja,nome,curriculo) VALUES ('22200000006','11999111999911','David Ferreira Tiago', '1 ano de experiencia');
INSERT INTO Funcionario (cpf,cnpj_loja,nome,curriculo) VALUES ('22200000007','99111999111199','Juan Pessoa de Melo', '4 anos de experiencia');
INSERT INTO Funcionario (cpf,cnpj_loja,nome,curriculo) VALUES ('22200000008','99111999111199','Tiago Pereira Campos', '5 anos de experiencia');	
INSERT INTO Funcionario (cpf,cnpj_loja,nome,curriculo) VALUES ('22200000009','11999111999911','Luan do Nascimento Silva', '3 anos de experiencia');
INSERT INTO Funcionario (cpf,cnpj_loja,nome,curriculo) VALUES ('22200000010','99111999111199','Alvaro da Silva Aguiar', '3 anos de experiencia');
INSERT INTO Funcionario (cpf,cnpj_loja,nome,curriculo) VALUES ('22200000011','11999111999911','Olavo Trajano de Almeida', '5 anos de experiencia');
INSERT INTO Funcionario (cpf,cnpj_loja,nome,curriculo) VALUES ('22200000012','99111999111199','Augusto de Melo Junior', '5 anos de experiencia');

 --INSERINDO Produtos 

INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (01,'Condicionador Don Alcides',4516, 6000);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (02,'ShampooDon Alcides',4380, 5800);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (03,'Cera para Cabelo Viking', 2806, 4500);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (04,'Pomada Modeladora Viking',2816,4500);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (05,'Óleo para Barba Viking',3928,5500);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (06,'Shampoo para Barba Viking',4544,6000);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (07,'Cerv Brahma Pilsen 300ml',219,440);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (08,'Cerv Brahma Ext Lager Lt 350ml',319, 640);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (09,'Cerve Bohemia 14 Weiss 300ml',499,1080);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (10,'Cerv Bohemia Aura Lager 300ml',499, 1080);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (11,'Cerv Bohemia Magna Pils 300ml',499, 1080);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (12,'Cerv Bohemia Pilsen 355ml',379, 760);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (13,'Skol Hops  Lata 350ml',319,640);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (14,'Skol Beats Spirit Lata 269ml', 449,700);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (15,'Cerveja HEINEKEN Garrafa 600ml',749, 1260);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (16,'Cerv BLK PRIN Gold Garf 600ml',1390,1830);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (17,'Whisky Imp 1 Litro  Jk Dan',12341,18230);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (18,'Whisky J W Red Label 1 Litro',5995,9560);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (19,'Whisky Black Label 1 Litro',10000,15000);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (20,'Whisky Bulleit Bourbon 750 Ml',15990,21000);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (21,'Unidade de Morango',045,090);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (22,'Unidade de Maracujá',200,400);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (23,'Unidade de Limão',020,050);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (24,'Unidade de Laranja',060,120);
INSERT INTO Produtos (id,nome,valor_compra,valor_venda) VALUES (25,'Unidade de Abacaxi',300,600);


 --INSERINDO Fornecedor 

INSERT INTO Fornecedor (cnpj_forn,nome) VALUES ('22999222999900','Don Alcides SA');
INSERT INTO Fornecedor (cnpj_forn,nome) VALUES ('22999222999902','Viking SA');
INSERT INTO Fornecedor (cnpj_forn,nome) VALUES ('22999222999903','Casa da Bebidas SA');
INSERT INTO Fornecedor (cnpj_forn,nome) VALUES ('22999222999904','Quitanda do Seu Zé SA');


 --INSERINDO Promoção_Data

INSERT INTO promocao_data (data_inicial,desconto,duracao) VALUES (TO_DATE('2018-12-10','yyyy/mm/dd'), 10.5, TO_DATE('2018-11-10','yyyy/mm/dd'));
INSERT INTO promocao_data (data_inicial,desconto,duracao) VALUES (TO_DATE('2018-12-12','yyyy/mm/dd'), 55, TO_DATE('2019-01-10','yyyy/mm/dd'));
INSERT INTO promocao_data (data_inicial,desconto,duracao) VALUES (TO_DATE('2019-01-10','yyyy/mm/dd'), 20.5, TO_DATE('2018-06-10','yyyy/mm/dd'));
INSERT INTO promocao_data (data_inicial,desconto,duracao) VALUES (TO_DATE('2018-06-10','yyyy/mm/dd'), 15.5, TO_DATE('2018-12-10','yyyy/mm/dd'));
INSERT INTO promocao_data (data_inicial,desconto,duracao) VALUES (TO_DATE('2018-10-10','yyyy/mm/dd'), 25.5, TO_DATE('2018-12-31','yyyy/mm/dd'));

--ate aqui ok

INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (04,'99111999111199', '01100000020');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (05,'99111999111199', '01100000020');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (07,'99111999111199', '01100000020');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (08,'99111999111199', '01100000020');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (09,'99111999111199', '01100000020');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (10,'99111999111199', '01100000020');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (11,'99111999111199', '01100000020');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (13,'99111999111199', '01100000020');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (14,'99111999111199', '01100000020');

INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (04,'11999111999911', '01100000002');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (05,'11999111999911', '01100000002');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (07,'11999111999911', '01100000002');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (08,'11999111999911', '01100000002');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (09,'11999111999911', '01100000002');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (10,'11999111999911', '01100000002');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (11,'11999111999911', '01100000002');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (13,'11999111999911', '01100000002');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (14,'11999111999911', '01100000002');

INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (04,'99111999111199', '01100000001');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (05,'99111999111199', '01100000001');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (07,'99111999111199', '01100000001');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (08,'99111999111199', '01100000001');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (09,'99111999111199', '01100000001');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (10,'99111999111199', '01100000001');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (11,'99111999111199', '01100000001');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (13,'99111999111199', '01100000001');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (14,'99111999111199', '01100000001');

INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (04,'99111999111199', '01100000003');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (05,'99111999111199', '01100000003');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (07,'99111999111199', '01100000003');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (08,'99111999111199', '01100000003');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (09,'99111999111199', '01100000003');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (10,'99111999111199', '01100000003');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (11,'99111999111199', '01100000003');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (13,'99111999111199', '01100000003');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (14,'99111999111199', '01100000003');

INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (04,'99111999111199', '01100000007');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (05,'99111999111199', '01100000007');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (07,'99111999111199', '01100000007');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (08,'99111999111199', '01100000007');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (09,'99111999111199', '01100000007');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (10,'99111999111199', '01100000007');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (11,'99111999111199', '01100000007');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (13,'99111999111199', '01100000007');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (14,'99111999111199', '01100000007');

INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (04,'11999111999911', '01100000015');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (05,'11999111999911', '01100000015');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (07,'11999111999911', '01100000015');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (08,'11999111999911', '01100000015');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (09,'11999111999911', '01100000015');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (10,'11999111999911', '01100000015');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (11,'11999111999911', '01100000015');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (13,'11999111999911', '01100000015');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (14,'11999111999911', '01100000015');

INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (04,'11999111999911', '01100000010');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (05,'11999111999911', '01100000010');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (07,'11999111999911', '01100000010');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (08,'11999111999911', '01100000010');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (09,'11999111999911', '01100000010');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (10,'11999111999911', '01100000010');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (11,'11999111999911', '01100000010');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (13,'11999111999911', '01100000010');
INSERT INTO Promocao (id_produto,cnpj_loja,cpf_cliente) VALUES (14,'11999111999911', '01100000010');


 --INSERINDO Promo_Produto
--ainda falta esse bloco
INSERT INTO Promo_Produto(id_data,id_produto) VALUES (TO_DATE('2018-12-10','yyyy/mm/dd'), 04);
INSERT INTO Promo_Produto(id_data,id_produto) VALUES (TO_DATE('2018-06-10','yyyy/mm/dd'), 05);
INSERT INTO Promo_Produto(id_data,id_produto) VALUES (TO_DATE('2018-12-10','yyyy/mm/dd'), 07);
INSERT INTO Promo_Produto(id_data,id_produto) VALUES (TO_DATE('2018-10-10','yyyy/mm/dd'), 08);
INSERT INTO Promo_Produto(id_data,id_produto) VALUES (TO_DATE('2018-12-12','yyyy/mm/dd'), 09);
INSERT INTO Promo_Produto(id_data,id_produto) VALUES (TO_DATE('2018-06-10','yyyy/mm/dd'), 10);
INSERT INTO Promo_Produto(id_data,id_produto) VALUES (TO_DATE('2018-12-10','yyyy/mm/dd'), 11);
INSERT INTO Promo_Produto(id_data,id_produto) VALUES (TO_DATE('2019-01-10','yyyy/mm/dd'), 13);
INSERT INTO Promo_Produto(id_data,id_produto) VALUES (TO_DATE('2018-12-10','yyyy/mm/dd'), 14);



--Pedro > 8 ao 14
--20, 22, 03, 15, 11, 01, 07
--cpf_cliente aqui está errado.
INSERT INTO cadastra_club (cpf_cliente, cpf_funcionario, cnpj_loja, mensalidade) VALUES ('01100000020', '22200000012','99111999111199',300);
INSERT INTO cadastra_club (cpf_cliente, cpf_funcionario, cnpj_loja, mensalidade) VALUES ('01100000002', '22200000011','11999111999911',250);
INSERT INTO cadastra_club (cpf_cliente, cpf_funcionario, cnpj_loja, mensalidade) VALUES ('01100000003', '22200000012','99111999111199',300);
INSERT INTO cadastra_club (cpf_cliente, cpf_funcionario, cnpj_loja, mensalidade) VALUES ('01100000015', '22200000011','11999111999911',250);
INSERT INTO cadastra_club (cpf_cliente, cpf_funcionario, cnpj_loja, mensalidade) VALUES ('01100000001', '22200000012','99111999111199',300);
INSERT INTO cadastra_club (cpf_cliente, cpf_funcionario, cnpj_loja, mensalidade) VALUES ('01100000010', '22200000011','11999111999911',250);
INSERT INTO cadastra_club (cpf_cliente, cpf_funcionario, cnpj_loja, mensalidade) VALUES ('01100000007', '22200000012','99111999111199',300);


INSERT INTO Dependente (cpf_cliente, nome, data_nasc) VALUES ('01100000007', 'Pedro Bastos', TO_DATE('2000-05-07','yyyy/mm/dd'));
INSERT INTO Dependente (cpf_cliente, nome, data_nasc) VALUES ('01100000007', 'Felipe Bastos', TO_DATE('2002-10-10','yyyy/mm/dd'));
INSERT INTO Dependente (cpf_cliente, nome, data_nasc) VALUES ('01100000015', 'Enzo Freeman', TO_DATE('2005-08-31','yyyy/mm/dd'));
INSERT INTO Compor (id_compoe, id_composto) VALUES (01,02);
INSERT INTO Compor (id_compoe, id_composto) VALUES (01,03);
INSERT INTO Compor (id_compoe, id_composto) VALUES (02,03);
INSERT INTO Compor (id_compoe, id_composto) VALUES (04,05);
INSERT INTO Compor (id_compoe, id_composto) VALUES (04,06);
INSERT INTO Compor (id_compoe, id_composto) VALUES (05,06);

INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000001', '22200000011');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000002', '22200000012');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000003', '22200000011');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000004', '22200000012');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000005', '22200000011');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000006', '22200000012');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000007', '22200000012');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000008', '22200000011');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000009', '22200000012');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000010', '22200000011');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000011', '22200000012');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000012', '22200000011');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000013', '22200000012');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000014', '22200000012');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000015', '22200000011');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000016', '22200000012');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000017', '22200000011');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000018', '22200000012');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000019', '22200000011');
INSERT INTO cadastra (cpf_cliente, cpf_funcionario) VALUES ('01100000020', '22200000012');

INSERT INTO Metas_func (cpf_funcionario, bonus, data_atribuicao, descricao) VALUES ('22200000001',10,TO_DATE('2018-10-01','yyyy/mm/dd'),'desc1');
INSERT INTO Metas_func (cpf_funcionario, bonus, data_atribuicao, descricao) VALUES ('22200000002',15,TO_DATE('2018-09-01','yyyy/mm/dd'),'desc2');
INSERT INTO Metas_func (cpf_funcionario, bonus, data_atribuicao, descricao) VALUES ('22200000003',17,TO_DATE('2018-10-01','yyyy/mm/dd'),'desc3');
INSERT INTO Metas_func (cpf_funcionario, bonus, data_atribuicao, descricao) VALUES ('22200000004',13,TO_DATE('2018-08-01','yyyy/mm/dd'),'desc4');
INSERT INTO Metas_func (cpf_funcionario, bonus, data_atribuicao, descricao) VALUES ('22200000005',05,TO_DATE('2018-10-01','yyyy/mm/dd'),'desc5');
INSERT INTO Metas_func (cpf_funcionario, bonus, data_atribuicao, descricao) VALUES ('22200000006',20,TO_DATE('2018-10-01','yyyy/mm/dd'),'desc6');
INSERT INTO Metas_func (cpf_funcionario, bonus, data_atribuicao, descricao) VALUES ('22200000007',24,TO_DATE('2018-12-01','yyyy/mm/dd'),'desc7');
INSERT INTO Metas_func (cpf_funcionario, bonus, data_atribuicao, descricao) VALUES ('22200000008',19,TO_DATE('2018-10-15','yyyy/mm/dd'),'desc8');
INSERT INTO Metas_func (cpf_funcionario, bonus, data_atribuicao, descricao) VALUES ('22200000009',13,TO_DATE('2018-11-15','yyyy/mm/dd'),'desc9');
INSERT INTO Metas_func (cpf_funcionario, bonus, data_atribuicao, descricao) VALUES ('22200000010',10,TO_DATE('2018-11-15','yyyy/mm/dd'),'desc10');
INSERT INTO Metas_func (cpf_funcionario, bonus, data_atribuicao, descricao) VALUES ('22200000011',10,TO_DATE('2018-01-15','yyyy/mm/dd'),'desc11');
INSERT INTO Metas_func (cpf_funcionario, bonus, data_atribuicao, descricao) VALUES ('22200000012',10,TO_DATE('2018-01-15','yyyy/mm/dd'),'desc12');

INSERT INTO Salario_func (cpf_funcionario, valor, data_atribuicao) VALUES ('22200000001',4000,TO_DATE('2018-10-01','yyyy/mm/dd'));
INSERT INTO Salario_func (cpf_funcionario, valor, data_atribuicao) VALUES ('22200000002',4000,TO_DATE('2018-10-01','yyyy/mm/dd'));
INSERT INTO Salario_func (cpf_funcionario, valor, data_atribuicao) VALUES ('22200000003',4500,TO_DATE('2018-10-01','yyyy/mm/dd'));
INSERT INTO Salario_func (cpf_funcionario, valor, data_atribuicao) VALUES ('22200000004',3700,TO_DATE('2018-10-01','yyyy/mm/dd'));
INSERT INTO Salario_func (cpf_funcionario, valor, data_atribuicao) VALUES ('22200000005',4200,TO_DATE('2018-10-01','yyyy/mm/dd'));
INSERT INTO Salario_func (cpf_funcionario, valor, data_atribuicao) VALUES ('22200000006',4100,TO_DATE('2018-10-01','yyyy/mm/dd'));
INSERT INTO Salario_func (cpf_funcionario, valor, data_atribuicao) VALUES ('22200000007',4000,TO_DATE('2018-10-01','yyyy/mm/dd'));
INSERT INTO Salario_func (cpf_funcionario, valor, data_atribuicao) VALUES ('22200000008',4000,TO_DATE('2018-10-01','yyyy/mm/dd'));
INSERT INTO Salario_func (cpf_funcionario, valor, data_atribuicao) VALUES ('22200000009',1800,TO_DATE('2018-10-01','yyyy/mm/dd'));
INSERT INTO Salario_func (cpf_funcionario, valor, data_atribuicao) VALUES ('22200000010',2000,TO_DATE('2018-10-01','yyyy/mm/dd'));
INSERT INTO Salario_func (cpf_funcionario, valor, data_atribuicao) VALUES ('22200000011',6050,TO_DATE('2018-10-01','yyyy/mm/dd'));
INSERT INTO Salario_func (cpf_funcionario, valor, data_atribuicao) VALUES ('22200000012',6250,TO_DATE('2018-10-01','yyyy/mm/dd'));
--Hugo > 15 ao 20

 --Inserindo drinks_barmm
 --para cada funcionario temos que repetir os drinks que eles sabem fazer aqui vai alguns drinks 
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000001','sex on the beach');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000001','martini');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000001','dry martini');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000001','citrus punch');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000001','gold frost');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000001','rio sunset');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000001','black and soda');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000001','mojito de morango');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000001','caipirinha de morango');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000001','caipiroska de morango');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000001','mojito classico');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000001','caipirinha classica');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000001','caipiroska classica');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000001','smirnoff e tonica');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000001','ciroc	e tonica');

INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000002','sex on the beach');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000002','citrus punch');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000002','gold frost');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000002','rio sunset');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000002','mojito de morango');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000002','caipirinha de morango');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000002','caipiroska de morango');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000002','mojito classico');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000002','caipirinha classica');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000002','caipiroska classica');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000002','smirnoff e tonica');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000002','ciroc	e tonica');

INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000003','martini');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000003','dry martini');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000003','citrus punch');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000003','rio sunset');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000003','black and soda');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000003','mojito de morango');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000003','caipirinha de morango');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000003','caipiroska de morango');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000003','mojito classico');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000003','caipirinha classica');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000003','caipiroska classica');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000003','ciroc	e tonica');

INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000004','sex on the beach');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000004','martini');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000004','citrus punch');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000004','gold frost');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000004','rio sunset');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000004','black and soda');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000004','mojito de morango');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000004','caipiroska de morango');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000004','mojito classico');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000004','caipiroska classica');
INSERT INTO drinks_barm (cpf_funcionario, drink) VALUES ('22200000004','smirnoff e tonica');

 --Inserindo Cortes_barb
 --mesma coisa para cortes
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000005','masculino medio liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000005','masculino longo liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000005','masculino curto crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000005','masculino medio crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000005','masculino longo crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000005','masculino curto cacheado');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000005','masculino medio cacheado');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000005','masculino longo cacheado');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000005','feminino curto liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000005','feminino medio liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000005','feminino longo liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000005','feminino curto crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000005','feminino medio crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000005','feminino longo crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000005','feminino curto cacheado');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000005','feminino medio cacheado');

INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000006','masculino curto liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000006','masculino medio liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000006','masculino curto crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000006','masculino longo crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000006','masculino curto cacheado');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000006','masculino medio cacheado');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000006','masculino longo cacheado');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000006','feminino curto liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000006','feminino medio liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000006','feminino longo liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000006','feminino curto crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000006','feminino longo crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000006','feminino curto cacheado');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000006','feminino longo cacheado');

INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000007','masculino curto liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000007','masculino medio liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000007','masculino longo liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000007','masculino curto crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000007','masculino medio crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000007','masculino curto cacheado');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000007','masculino medio cacheado');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000007','masculino longo cacheado');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000007','feminino medio liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000007','feminino curto crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000007','feminino medio crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000007','feminino longo crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000007','feminino medio cacheado');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000007','feminino longo cacheado');

INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000008','masculino curto liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000008','masculino medio liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000008','masculino longo liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000008','masculino curto crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000008','masculino medio crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000008','masculino longo crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000008','masculino curto cacheado');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000008','masculino medio cacheado');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000008','masculino longo cacheado');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000008','feminino curto liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000008','feminino longo liso');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000008','feminino curto crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000008','feminino medio crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000008','feminino longo crespo');
INSERT INTO cortes_barb (cpf_funcionario, corte) VALUES ('22200000008','feminino curto cacheado');

 --Inserindo Telefone_forn
INSERT INTO telefone_forn (cnpj_fornecedor, telefone) VALUES ('22999222999900',33333333);
INSERT INTO telefone_forn (cnpj_fornecedor, telefone) VALUES ('22999222999900',22223333);
INSERT INTO telefone_forn (cnpj_fornecedor, telefone) VALUES ('22999222999902',33332222);
INSERT INTO telefone_forn (cnpj_fornecedor, telefone) VALUES ('22999222999902',33332233);
INSERT INTO telefone_forn (cnpj_fornecedor, telefone) VALUES ('22999222999903',33333322);
INSERT INTO telefone_forn (cnpj_fornecedor, telefone) VALUES ('22999222999904',33223322);
INSERT INTO telefone_forn (cnpj_fornecedor, telefone) VALUES ('22999222999900',33333335);
INSERT INTO telefone_forn (cnpj_fornecedor, telefone) VALUES ('22999222999900',22223336);
INSERT INTO telefone_forn (cnpj_fornecedor, telefone) VALUES ('22999222999902',33332227);
INSERT INTO telefone_forn (cnpj_fornecedor, telefone) VALUES ('22999222999902',33332238);
INSERT INTO telefone_forn (cnpj_fornecedor, telefone) VALUES ('22999222999903',33333329);
INSERT INTO telefone_forn (cnpj_fornecedor, telefone) VALUES ('22999222999904',33223312);
INSERT INTO telefone_forn (cnpj_fornecedor, telefone) VALUES ('22999222999900',33333310);
INSERT INTO telefone_forn (cnpj_fornecedor, telefone) VALUES ('22999222999900',22223312);
INSERT INTO telefone_forn (cnpj_fornecedor, telefone) VALUES ('22999222999902',33332213);
INSERT INTO telefone_forn (cnpj_fornecedor, telefone) VALUES ('22999222999902',33332214);
INSERT INTO telefone_forn (cnpj_fornecedor, telefone) VALUES ('22999222999903',33333315);
INSERT INTO telefone_forn (cnpj_fornecedor, telefone) VALUES ('22999222999904',33223316);

 --Inserindo Enderecos_forn
INSERT INTO enderecos_forn (cnpj_fornecedor, rua, cep, numero) VALUES ('22999222999900','Rua Dr Jose Silva', 52091135,987);
INSERT INTO enderecos_forn (cnpj_fornecedor, rua, cep, numero) VALUES ('22999222999900','Rua Joao Silveira', 56121023,035);
INSERT INTO enderecos_forn (cnpj_fornecedor, rua, cep, numero) VALUES ('22999222999900','Rua das Amendoas', 86412099,245);
INSERT INTO enderecos_forn (cnpj_fornecedor, rua, cep, numero) VALUES ('22999222999902','Rua Paula Fernandes', 52147187,880);
INSERT INTO enderecos_forn (cnpj_fornecedor, rua, cep, numero) VALUES ('22999222999902','Rua Engenheiro Paulo Rodrigues', 52147107,870);
INSERT INTO enderecos_forn (cnpj_fornecedor, rua, cep, numero) VALUES ('22999222999903','Rua Ingrid Farias', 32157187,300);
INSERT INTO enderecos_forn (cnpj_fornecedor, rua, cep, numero) VALUES ('22999222999903','Rua Kelvis Duran', 52247107,200);
INSERT INTO enderecos_forn (cnpj_fornecedor, rua, cep, numero) VALUES ('22999222999904','Rua Paul Mcartiney', 42147197,800);
INSERT INTO enderecos_forn (cnpj_fornecedor, rua, cep, numero) VALUES ('22999222999904','Rua ERodrigue Ferreira', 52113107,500);

 --Inserindo Telefone_cli
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000001',987238728);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000001',953156510);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000002',915171759);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000002',998418948);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000003',968348734);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000003',941898753);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000004',987642498);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000004',987644047);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000005',998134714);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000005',961323456);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000006',968234864);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000006',987237237);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000007',938923885);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000007',998239828);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000008',909819857);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000008',909256450);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000009',914984948);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000009',900000000);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000010',939777777);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000010',917111637);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000010',987266628);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000010',953124510);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000012',911245159);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000012',993368948);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000013',962228734);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000013',955558753);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000014',999992498);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000014',988874047);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000015',911114714);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000015',922223456);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000016',900004864);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000016',933357237);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000017',939993885);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000017',999999828);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000018',988889857);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000018',977776450);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000019',966664948);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000019',911118436);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000020',955548747);
INSERT INTO telefone_cli (cpf_cliente, telefone) VALUES ('01100000020',911236637);

-- Inserindo email_cli  
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000001','diegomatos@bolcombr');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000001','matosdiego@gmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000002','hugoabreu@gmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000002','abreuhugo@gmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000003','gustavo0@yahoocombr');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000003','guga@yahoocombr');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000004','pedrojorge@terracombr');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000005','zezedica@hotmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000006','hulklu@hotmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000007','bastosrafael@hotmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000007','raafinhab@hotmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000008','bolsomito@yahoocombr');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000008','bolsonarooo@gmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000009','lulinha@hotmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000010','trumpzera@gmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000010','bushao@hotmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000012','obamaloucao@yahoocombr');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000013','neymarzinho@hotmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000013','neymarjr@hotmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000014','messilionel@hotmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000015','freemanmorgan@hotmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000016','farorodrigo@hotmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000017','carlosalberto@hotmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000017','carlosalberto_10@hotmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000018','silvafausto@hotmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000019','anisiobr@hotmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000020','magnata@hotmailcom');
INSERT INTO email_cli (cpf_cliente, email) VALUES ('01100000020','circuitos12@hotmailcom');

--Gustavo > 21 ao 29

-- INSERINDO COMPRAR

INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (01,'22999222999900','22200000011',TO_DATE('2018-11-01','yyyy/mm/dd'),15);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (02,'22999222999902','22200000011',TO_DATE('2018-10-01','yyyy/mm/dd'),15);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (03,'22999222999902','22200000011',TO_DATE('2018-09-01','yyyy/mm/dd'),15);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (04,'22999222999903','22200000011',TO_DATE('2018-10-01','yyyy/mm/dd'),10);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (05,'22999222999904','22200000011',TO_DATE('2018-11-01','yyyy/mm/dd'),10);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (06,'22999222999904','22200000011',TO_DATE('2018-09-01','yyyy/mm/dd'),10);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (07,'22999222999903','22200000011',TO_DATE('2018-11-01','yyyy/mm/dd'),20);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (08,'22999222999902','22200000011',TO_DATE('2018-10-01','yyyy/mm/dd'),20);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (09,'22999222999902','22200000011',TO_DATE('2018-11-01','yyyy/mm/dd'),30);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (10,'22999222999903','22200000011',TO_DATE('2018-11-01','yyyy/mm/dd'),30);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (11,'22999222999900','22200000011',TO_DATE('2018-11-01','yyyy/mm/dd'),50);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (12,'22999222999904','22200000011',TO_DATE('2018-09-01','yyyy/mm/dd'),50);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (13,'22999222999903','22200000011',TO_DATE('2018-11-01','yyyy/mm/dd'),60);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (14,'22999222999902','22200000011',TO_DATE('2018-11-01','yyyy/mm/dd'),60);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (15,'22999222999900','22200000011',TO_DATE('2018-10-01','yyyy/mm/dd'),70);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (16,'22999222999903','22200000010',TO_DATE('2018-11-01','yyyy/mm/dd'),80);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (17,'22999222999904','22200000012',TO_DATE('2018-11-01','yyyy/mm/dd'),80);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (18,'22999222999902','22200000012',TO_DATE('2018-09-01','yyyy/mm/dd'),80);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (19,'22999222999903','22200000012',TO_DATE('2018-11-01','yyyy/mm/dd'),70);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (20,'22999222999904','22200000012',TO_DATE('2018-11-01','yyyy/mm/dd'),90);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (21,'22999222999900','22200000012',TO_DATE('2018-11-01','yyyy/mm/dd'),20);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (22,'22999222999902','22200000012',TO_DATE('2018-12-01','yyyy/mm/dd'),15);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (23,'22999222999903','22200000012',TO_DATE('2018-11-01','yyyy/mm/dd'),112);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (24,'22999222999904','22200000012',TO_DATE('2018-11-01','yyyy/mm/dd'),167);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (25,'22999222999900','22200000012',TO_DATE('2018-10-01','yyyy/mm/dd'),145);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (01,'22999222999902','22200000012',TO_DATE('2018-11-01','yyyy/mm/dd'),114);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (10,'22999222999903','22200000012',TO_DATE('2018-09-01','yyyy/mm/dd'),170);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (05,'22999222999904','22200000012',TO_DATE('2018-11-01','yyyy/mm/dd'),80);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (15,'22999222999900','22200000012',TO_DATE('2018-12-01','yyyy/mm/dd'),100);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (25,'22999222999902','22200000012',TO_DATE('2018-11-01','yyyy/mm/dd'),10);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (07,'22999222999903','22200000012',TO_DATE('2018-11-01','yyyy/mm/dd'),30);
INSERT INTO comprar (id_prod,cnpj_fornecedor,cpf_funcionario,data_compra,quant_compra) VALUES (13,'22999222999904','22200000012',TO_DATE('2018-10-01','yyyy/mm/dd'),20);


--INSERINDO USUFRUI
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (04, '01100000020');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (05, '01100000020');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (07, '01100000020');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (08, '01100000020');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (09, '01100000020');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (10, '01100000020');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (11, '01100000020');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (13, '01100000020');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (14, '01100000020');

INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (04, '01100000002');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (05, '01100000002');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (07, '01100000002');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (08, '01100000002');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (09, '01100000002');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (10, '01100000002');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (11, '01100000002');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (13, '01100000002');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (14, '01100000002');

INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (04, '01100000001');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (05, '01100000001');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (07, '01100000001');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (08, '01100000001');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (09, '01100000001');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (10, '01100000001');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (11, '01100000001');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (13, '01100000001');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (14, '01100000001');

INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (04, '01100000003');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (05, '01100000003');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (07, '01100000003');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (08, '01100000003');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (09, '01100000003');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (10, '01100000003');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (11, '01100000003');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (13, '01100000003');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (14, '01100000003');

INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (04, '01100000007');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (05, '01100000007');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (07, '01100000007');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (08, '01100000007');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (09, '01100000007');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (10, '01100000007');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (11, '01100000007');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (13, '01100000007');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (14, '01100000007');

INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (04, '01100000015');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (05, '01100000015');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (07, '01100000015');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (08, '01100000015');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (09, '01100000015');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (10, '01100000015');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (11, '01100000015');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (13, '01100000015');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (14, '01100000015');

INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (04, '01100000010');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (05, '01100000010');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (07, '01100000010');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (08, '01100000010');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (09, '01100000010');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (10, '01100000010');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (11, '01100000010');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (13, '01100000010');
INSERT INTO usufrui (id_prod,cpf_cliente) VALUES (14, '01100000010');
 
 --INSERINDO VENDE

INSERT INTO Vende (id_prod,cpf_barman ,cpf_cliente,data_venda,quant_vend) VALUES (09,'22200000001','01100000001',TO_DATE('2018-11-04','yyyy/mm/dd'), 02);
INSERT INTO Vende (id_prod,cpf_barman ,cpf_cliente,data_venda,quant_vend) VALUES (04,'22200000002','01100000002',TO_DATE('2018-12-03','yyyy/mm/dd'), 02);
INSERT INTO Vende (id_prod,cpf_barman ,cpf_cliente,data_venda,quant_vend) VALUES (06,'22200000003','01100000003',TO_DATE('2018-12-17','yyyy/mm/dd'), 02);
INSERT INTO Vende (id_prod,cpf_barman ,cpf_cliente,data_venda,quant_vend) VALUES (07,'22200000004','01100000004',TO_DATE('2018-12-20','yyyy/mm/dd'), 03);
INSERT INTO Vende (id_prod,cpf_barman ,cpf_cliente,data_venda,quant_vend) VALUES (07,'22200000001','01100000005',TO_DATE('2018-11-04','yyyy/mm/dd'), 03);
INSERT INTO Vende (id_prod,cpf_barman ,cpf_cliente,data_venda,quant_vend) VALUES (07,'22200000002','01100000006',TO_DATE('2018-12-03','yyyy/mm/dd'), 01);
INSERT INTO Vende (id_prod,cpf_barman ,cpf_cliente,data_venda,quant_vend) VALUES (08,'22200000003','01100000007',TO_DATE('2018-12-17','yyyy/mm/dd'), 05);
INSERT INTO Vende (id_prod,cpf_barman ,cpf_cliente,data_venda,quant_vend) VALUES (20,'22200000004','01100000008',TO_DATE('2018-12-20','yyyy/mm/dd'), 06);


 --INSERINDO ATENDE

INSERT INTO Atende (id_prod,cpf_barb,cpf_cliente,data_atend) VALUES (01,'22200000005','01100000001',TO_DATE('2018-11-04','yyyy/mm/dd'));
INSERT INTO Atende (id_prod,cpf_barb,cpf_cliente,data_atend) VALUES (02,'22200000005','01100000001',TO_DATE('2018-11-04','yyyy/mm/dd'));
INSERT INTO Atende (id_prod,cpf_barb,cpf_cliente,data_atend) VALUES (04,'22200000005','01100000003',TO_DATE('2018-11-04','yyyy/mm/dd'));
INSERT INTO Atende (id_prod,cpf_barb,cpf_cliente,data_atend) VALUES (05,'22200000006','01100000003',TO_DATE('2018-12-03','yyyy/mm/dd'));
INSERT INTO Atende (id_prod,cpf_barb,cpf_cliente,data_atend) VALUES (04,'22200000006','01100000005',TO_DATE('2018-12-03','yyyy/mm/dd'));
INSERT INTO Atende (id_prod,cpf_barb,cpf_cliente,data_atend) VALUES (06,'22200000006','01100000005',TO_DATE('2018-12-03','yyyy/mm/dd'));
INSERT INTO Atende (id_prod,cpf_barb,cpf_cliente,data_atend) VALUES (03,'22200000007','01100000002',TO_DATE('2018-12-17','yyyy/mm/dd'));
INSERT INTO Atende (id_prod,cpf_barb,cpf_cliente,data_atend) VALUES (01,'22200000007','01100000002',TO_DATE('2018-12-17','yyyy/mm/dd'));
INSERT INTO Atende (id_prod,cpf_barb,cpf_cliente,data_atend) VALUES (05,'22200000007','01100000004',TO_DATE('2018-12-17','yyyy/mm/dd'));
INSERT INTO Atende (id_prod,cpf_barb,cpf_cliente,data_atend) VALUES (04,'22200000008','01100000004',TO_DATE('2018-12-20','yyyy/mm/dd'));
INSERT INTO Atende (id_prod,cpf_barb,cpf_cliente,data_atend) VALUES (02,'22200000008','01100000006',TO_DATE('2018-12-20','yyyy/mm/dd'));
INSERT INTO Atende (id_prod,cpf_barb,cpf_cliente,data_atend) VALUES (03,'22200000008','01100000006',TO_DATE('2018-12-20','yyyy/mm/dd'));


 --INSERINDO CADASTRA RELCLUB
 
INSERT INTO cadastra_relclub (cpf_cliente,cpf_funcionario,cnpj_loja) VALUES ('01100000001','22200000011','99111999111199');
INSERT INTO cadastra_relclub (cpf_cliente,cpf_funcionario,cnpj_loja) VALUES ('01100000002','22200000012','11999111999911');
INSERT INTO cadastra_relclub (cpf_cliente,cpf_funcionario,cnpj_loja) VALUES ('01100000003','22200000011','99111999111199');
INSERT INTO cadastra_relclub (cpf_cliente,cpf_funcionario,cnpj_loja) VALUES ('01100000007','22200000011','11999111999911');
INSERT INTO cadastra_relclub (cpf_cliente,cpf_funcionario,cnpj_loja) VALUES ('01100000010','22200000012','11999111999911');
INSERT INTO cadastra_relclub (cpf_cliente,cpf_funcionario,cnpj_loja) VALUES ('01100000015','22200000011','11999111999911');
INSERT INTO cadastra_relclub (cpf_cliente,cpf_funcionario,cnpj_loja) VALUES ('01100000020','22200000012','99111999111199');


 --INSERINDO GERENTE 

INSERT INTO gerente (cpf_func) VALUES ('22200000012');
INSERT INTO gerente (cpf_func) VALUES ('22200000011');

 --INSERINDO BARMAN
INSERT INTO barman (cpf_func) VALUES ('22200000004');
INSERT INTO barman (cpf_func) VALUES ('22200000003');
INSERT INTO barman (cpf_func) VALUES ('22200000002');
INSERT INTO barman (cpf_func) VALUES ('22200000001');

-- INSERINDO BARBEIRO

INSERT INTO barbeiro (cpf_func) VALUES ('22200000005');
INSERT INTO barbeiro (cpf_func) VALUES ('22200000006');
INSERT INTO barbeiro (cpf_func) VALUES ('22200000007');
INSERT INTO barbeiro (cpf_func) VALUES ('22200000008');
