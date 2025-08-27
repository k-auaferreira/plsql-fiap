SET SERVEROUTPUT ON;

DECLARE
    valor NUMBER := &valor;
BEGIN
    IF MOD(valor, 2) = 0 THEN
        dbms_output.put_line('O NÚMERO QUE VOCÊ DIGITOU É PAR');
    ELSE
        dbms_output.put_line('O NÚMERO QUE VOCÊ DIGITOU É ÍMPAR');
    END IF;
END;

-- Exercício 1
-- Selecionar gênero

DECLARE
    genero VARCHAR2(1) := '&genero';
BEGIN
    IF UPPER (genero) = 'M' THEN
        dbms_output.put_line('GÊNERO MASCULINO');
    ELSIF UPPER (genero) = 'F' THEN
        dbms_output.put_line('GÊNERO FEMININO');
    ELSE
        dbms_output.put_line('OUTROS');
    END IF;
END;

-- Exercício 2
-- Parcelamento de um carro

DECLARE
    carro NUMBER := 10000;
    valor_entrada NUMBER := carro * 0.2;
    valor_carro number := carro - valor_entrada;
    qtd_parcela number := &qtd_parcela;
BEGIN
    IF UPPER (qtd_parcela) = 6 THEN
        dbms_output.put_line('EM 6 PARCELAS: R$' || (valor_entrada + (valor_carro * 1.10)));
    ELSIF UPPER (qtd_parcela) = 12 THEN
        dbms_output.put_line('EM 12 PARCELAS: R$' || (valor_entrada + (valor_carro * 1.15)));
    ELSE
        dbms_output.put_line('PARCELAMENTO MÁXIMO DE 18 PARCELAS: R$' || (valor_entrada + (valor_carro * 1.20)));
    END IF;
END;

