SET SERVEROUTPUT ON;

DECLARE
    var_nome     VARCHAR2(30);
    var_idade    NUMBER := 100;
    var_endereco VARCHAR2(100) := '&endereco';
BEGIN
    var_nome := 'KAUA';
    dbms_output.put_line('MEU NOME É: ' || var_nome);
    dbms_output.put_line('MINHA IDADE É: ' || var_idade);
    dbms_output.put_line('ENDEREÇO É: ' || var_endereco);
END;

-- Execício 1
-- Aumento de salário

DECLARE
    salario      NUMBER := &salario;
    salario_novo NUMBER := salario + ( salario * 0.25 );
BEGIN
    dbms_output.put_line('SALÁRIO ATUAL: ' || salario);
    dbms_output.put_line('NOVO SALÁRIO: ' || salario_novo);
END;

-- Exercício 2
-- Conversão do dólar

DECLARE
    dolar           NUMBER := 45;
    dolar_conversao NUMBER := dolar * 5.5;
BEGIN
    dbms_output.put_line('CONVERTENDO: ' || dolar || 'U$');
    dbms_output.put_line('TOTAL: R$' || dolar_conversao);
END;

-- Exercício 3
-- Financiamento de um carro

DECLARE
    valor_carro NUMBER := &valor_carro;
BEGIN
    dbms_output.put_line('VALOR DO CARRO: R$' || valor_carro);
    dbms_output.put_line('VALOR DA PARCELA C/ JUROS (3%): R$' || (valor_carro * 1.03)/10);
END;

-- Exercício 4
-- Valor das parcelas da compra de um carro

DECLARE
    carro NUMBER := 10000;
    valor_entrada NUMBER := carro * 0.2;
    valor_carro number := carro - valor_entrada;
BEGIN
    dbms_output.put_line('VALOR DO CARRO: R$' || carro);
    dbms_output.put_line('VALOR DA ENTRADA: R$' || valor_entrada);
    dbms_output.put_line('EM 6 PARCELAS: R$' || (valor_entrada + (valor_carro * 1.10)));
    dbms_output.put_line('EM 12 PARCELAS: R$' || (valor_entrada + (valor_carro * 1.15)));
    dbms_output.put_line('EM 18 PARCELAS: R$' || (valor_entrada + (valor_carro * 1.20)));
END;