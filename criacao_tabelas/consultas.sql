ALTER TABLE Loja ADD (contato NUMBER);

ALTER TABLE Loja ADD (matriz_filial varchar2(7));

UPDATE Salario_func SET valor = 2500.45 WHERE cpf_funcionario = '222.000.000-01';

SELECT sf.cpf_funcionario, sf.valor 
  FROM Salario_func sf
 WHERE sf.valor>1000.00 ORDER BY sf.valor DESC;

 SELECT ec.email, 
  FROM email_cli ec
 WHERE ec.email IS NOT NULL;

SELECT lj.contato
  FROM Loja lj
 WHERE contato IS NULL;

SELECT AVG mf.bonus
   FROM metas_func mf;

SELECT cc.cpf_cliente,cc.mensalidade
  from table Cadastra_club cc
 where mensalidade in (select MAX (cc2.mensalidade)
                        from Cadastra_club cc2
                        );

SELECT cc.cpf_cliente,cc.mensalidade
  from table Cadastra_club cc
 where mensalidade in (select MIN (cc2.mensalidade)
                        from Cadastra_club cc2
                        );

SELECT cb.corte
  FROM cortes_barb cb
 WHERE corte LIKE 'Masc%';

 SELECT DISTINCT cb.cpf_funcionario
  FROM cortes_barb cb
 WHERE corte IN ('masculino curto crespo','masculino medio crespo', 'masculino longo crespo');

SELECT cc.cpf_cliente
  FROM Cadastra_club cc
 WHERE cc.mensalidade BETWEEN 100 AND 300;

select COUNT(*)
   from Salario_func sf
  WHERE sf.valor > 2500;

Select f.nome
    from funcionario f
    INNER JOIN Salario_func sf
    on f.cpf=sf.cpf_funcionario
    WHERE sf.valor>2500;

select cli.nome
    from Cliente cli
    LEFT JOIN email_cli emcli
    on cli.cpf=emcli.cpf_cliente
 where emcli.cpf_cliente IS NULL;

 CREATE OR REPLACE PROCEDURE pesquisa_club
(pesquisa_cpf IN cliente.cpf%TYPE) IS
    p_nome cliente.nome%TYPE;
    p_telefone cliente.telefone%TYPE;
    p_email cliente.email%TYPE;
    p_nascimento cliente.data_nascimento%TYPE;
    
    BEGIN
        SELECT nome,telefone,email,data_nascimento
        INTO p_nome,p_telefone,p_email,p_nascimento
        FROM cliente a
        INNER JOIN club c
        ON a.cpf = c.cpf
        WHERE cpf = pesquisa_cpf;
        
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
            INSERT INTO log_table(info)
            VALUES ('Cliente com o cpf indicado nao esta cadastrado');
        END;
        /
        
        dbms_output.put_line(
        'Nome: '||p_nome||
        'Telefone: '||p_telefone||
        'Email: '||p_email||
        'Data de nascimento: '||p_nascimento||);
        
    END;
    /
    
    
CREATE TYPE Gerente IS RECORD(
nome VARCHAR2(30),
cpf NUMBER(11),
salario NUMBER(8,2));

DECLARE

    d_telefone VARCHAR2(10):='32291005';
    d_cpf NUMBER(11):= 11259439439;
    
BEGIN
UPDATE cliente
 SET telefone = d_telefone
 WHERE cpf = d_cpf;
 
END;
/

--função que dado um cpf cadastrado, imprime os produtos consumidos por aquele CPF

CREATE OR REPLACE FUNCTION desconto_cadastro
    (cpf_cliente cliente.cpf%TYPE)  IS
    retorno varchar(30);
    soma produtos.valor_venda%TYPE;


    begin
        select sum(valor_venda)
          into soma
          from produtos p
          INNER JOIN Usufrui u 
          on u.id_prod=p.id
          INNER JOIN Usufrui us
          on us.cpf_cliente = cpf_cliente;
          INNER JOIN Cadastra_club cc
          on cc.cpf_cliente=cpf_cliente;
         if soma > 500 then
           retorno:='Ofereça 5% de desconto na renovação';
         else if soma > 1000 then
           retorno:='Ofereça 10% de desconto na renovação';
         else
           retorno:='não ofereça desconto';
         end if;

      RETURN retorno;
      
      
      
      EXCEPTION
            WHEN NO_DATA_FOUND THEN
            INSERT INTO log_table(info)
            VALUES ('Cliente com o cpf indicado nao esta cadastrado');
        END;
        /
    end;

TYPE tabela_salarios IS TABLE OF Salario_func.valor%TYPE
    index by BINARY_INTEGER;
boolean

 



CREATE OR REPLACE TRIGGER Gerente_Loja_trigger
BEFORE INSERT ON gerente

FOR EACH ROW
DECLARE
    cpf_gerente gerente.cpf_func%TYPE;
    
begin
 select g.cpf_func
    into cpf_gerente
     from gerente g
     where g.cpf_func = :NEW.cpf_func;
      
      
 if cpf_gerente IS NOT NULL then
   raise_application_error(-20101, 'Este funcionário já gerencia uma loja');
 end if;

    exception
      when no_data_found then
      dbms_output.put_line('Gerencia Aceita');

 end Gerente_Loja_trigger;
 

INSERT INTO gerente (cpf_func) VALUES ('22200000006');
INSERT INTO gerente (cpf_func) VALUES ('22200000011');
INSERT INTO gerente (cpf_func) VALUES ('22200000010');


CREATE OR REPLACE TRIGGER apagar_produtos
BEFORE INSERT OR Update ON produtos

DECLARE
aux varchar(2);
x varchar(2);
y varchar(2);
prod exception;


BEGIN


--  verificar último dia:
x := EXTRACT(month from sysdate);
IF x IN ('1', '3', '5', '7', '8', '10', '12')
THEN aux := '1'; 
END IF;

IF x IN ('4', '6', '9', '11') THEN
aux := '2'; END IF;
IF x = 2 THEN aux := '3';
END IF;



y := EXTRACT(day from sysdate);

CASE aux
WHEN 1 THEN IF y = '31' THEN RAISE prod;
end if;
WHEN 2 THEN IF y = '30' THEN RAISE prod;
end if;
WHEN 3 THEN IF y = '28'
THEN RAISE prod;
end if;
END CASE;

dbms_output.put_line(''||x||'    '||y);

    exception
    when prod then
    raise_application_error(-20324,'ÚLTIMO DIA DO MÊS - Não é permitido atribuir salario no BD');

END apagar_produtos;
/


--deixar sempre por ultimo pois vai excluir dados da tabela
DELETE FROM Produtos
 WHERE valor_compra > 150.00;





CREATE OR REPLACE PROCEDURE emp_info
IS
    CURSOR func_info IS SELECT cpf,cnpj_loja,nome,curriculo FROM funcionario;
    info_func           func_info%ROWTYPE;
BEGIN
    OPEN func_info;
    LOOP
        FETCH func_info INTO info_func;
        EXIT WHEN func_info%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE( info_func.nome|| ' com o cpf: ' || info_func.cpf || ' trabalha na loja '
            || info_func.cnpj_loja || '. Experiência: ' || info_func.curriculo );
    END LOOP;
    CLOSE func_info;
END;


CREATE OR REPLACE FUNCTION buscar_cliente
   (cpf_cliente cliente.cpf%TYPE)
   RETURN cliente.nome%type is
   retorno cliente.nome%type;



   begin
       select cc.nome
         into retorno
         from cliente cc
         where cc.cpf = cpf_cliente;

       RETURN retorno;
      
   end;
/

