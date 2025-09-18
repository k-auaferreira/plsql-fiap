SET SERVEROUTPUT ON;

-- LOOP
LOOP < instrução(ões) >
	EXIT WHEN < condição >
END LOOP;


-- WHILE
DECLARE
    v_contador
number(2) := 1;

BEGIN
    WHILE v_contador <= 20 LOOP
        dbms_output.put_line(v_contador);
        v_contador := v_contador + 1;
    END LOOP;
END;


-- FOR
BEGIN
    FOR v_contador IN 1..20 LOOP
        dbms_output.put_line(v_contador);
    END LOOP;
END;

-- Exercícios
-- 1-

BEGIN
    FOR x IN 1..10 LOOP
        dbms_output.put_line(x * 150);
    END LOOP;
END;