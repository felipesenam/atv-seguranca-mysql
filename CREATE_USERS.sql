
-- a)
CREATE USER IF NOT EXISTS 'Joao' IDENTIFIED BY 'CHIDTatERMcK';
GRANT SELECT, UPDATE, INSERT, DELETE ON PAGAMENTOS.* TO Joao WITH GRANT OPTION;

-- Aqui tá dando problema, é como se essa permissão não tivesse sido concedida,
-- daí não tem como revocar e mostra um aviso
REVOKE SELECT ON PAGAMENTOS.vw_funcionario FROM 'Joao';
REVOKE SELECT ON PAGAMENTOS.vw_salario FROM 'Joao';
-- ERROR 1147 (42000): There is no such grant defined for user 'Joao' on host '%' on table 'vw_funcionario'
-- ERROR 1147 (42000): There is no such grant defined for user 'Joao' on host '%' on table 'vw_salario'

-- b)
CREATE USER IF NOT EXISTS 'Maria' IDENTIFIED BY 'MERonaiLEGEr';
GRANT SELECT, UPDATE, INSERT ON PAGAMENTOS.CLIENTES TO Maria;

-- c)
CREATE USER IF NOT EXISTS 'Jose' IDENTIFIED BY 'rpsECeStEISe';
GRANT SELECT ON PAGAMENTOS.CLIENTES TO Jose;
GRANT SELECT ON PAGAMENTOS.DESCONTOS TO Jose;

-- d)
GRANT UPDATE, INSERT, DELETE ON PAGAMENTOS.CLIENTES TO Joao;

-- e)
REVOKE SELECT ON TABLE PAGAMENTOS.CLIENTES FROM Maria;

-- f)
REVOKE SELECT ON TABLE PAGAMENTOS.CLIENTES FROM 'Joao';

