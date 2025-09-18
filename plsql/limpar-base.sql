-- LIMPAR TODA A BASE DE DADOS

BEGIN
    FOR x IN (
        SELECT
            table_name
        FROM
            user_tables
    ) LOOP
        EXECUTE IMMEDIATE ' drop table '
                          || x.table_name
                          || ' cascade constraints';
    END LOOP;
END;

