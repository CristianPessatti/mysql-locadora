USE locadora;

SELECT * FROM clientes;

SELECT * FROM empregados;

# DEIXANDO O NOME DE TODOS OS CLIENTES EM MAIUSCULO
UPDATE clientes SET cli_nome = UPPER(cli_nome);

# AUMENTANDO 20% NO SALARIO DE TODOS COM SALARIO MENOR QUE 1500 REAIS
UPDATE empregados SET emp_salario = emp_salario * 1.2 WHERE emp_salario < 1500;
