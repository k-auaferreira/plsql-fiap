SET SERVEROUTPUT ON;

CREATE TABLE alunos (
    id_aluno NUMBER PRIMARY KEY,
    nome     VARCHAR(30),
    nota     NUMBER
);

DECLARE
    v_id   NUMBER := 1;
    v_nome VARCHAR2(30) := 'VERGS';
    v_nota NUMBER := 5;
BEGIN
    INSERT INTO alunos VALUES ( v_id,
                                v_nome,
                                v_nota );
    COMMIT;
END;

-- Exibindo a nota

DECLARE
    v_id   NUMBER := 1;
    v_nota NUMBER;
BEGIN
    SELECT
        nota
    INTO v_nota
    FROM ALUNOS
    WHERE
        id_aluno = v_id;

    dbms_output.put_line('A NOTA DO ALUNO INFORMADO É: ' || v_nota);
END;

-- Alterando a nota

DECLARE
    v_id   NUMBER := 1;
    v_nota NUMBER;
BEGIN
-- select nota into v_nota from ALUNO where id_aluno = v_id;

    UPDATE
        alunos
    SET
        nota = v_nota
    WHERE
        id_aluno = v_id;
    dbms_output.put_line('NOTA ALTERADA PARA: ' || v_nota);
END;

SELECT * FROM ALUNOS;