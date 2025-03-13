CREATE DATABASE serasa;
 
 
--Criando tabela empregado
CREATE TABLE empregado(
    codigo INT (5) PRIMARY KEY,
    nome VARCHAR (20) NOT NULL,
    depto INT (4) NOT NULL,
    salario FLOAT (6,2)
);
 
--Inserindo dados na tabela empregado
 
INSERT INTO empregado (codigo,nome,depto,salario)
VALUES (43500, "Ana da Silva", 9411, 5200.00),
(43501,"Vitória Beatriz", 9411,3400.00),
(43502,"Pedro José", 9412, 2600.00),
(43503, "Amary Manoel", 9412,8400.00),
(43504, "Carlos Silva", 9412,5600.00),
(43505,"Vitório Cardoso", 9413,2300.00),
(43506,"Carlos Ives Souza", 9413,3380.00),
(43507,"Victor Silva", 9413, 4500.00),
(43508, "Saulo Monteiro", 9413,6800.00);
 
--Altere o departamento de todos para 9414
UPDATE empregado
SET depto = "9414"
WHERE depto IN ("9411", "9412", "9413");
 
--Altere o departamento dos três primeiros para 9415
UPDATE empregado
SET depto = "9415"
WHERE codigo IN ("43500","43501","43502");
 
--Altere o departamento de cada um para o valor original novamente
UPDATE empregado
SET depto = "9411"
WHERE codigo IN ("43500","43501");
 
UPDATE empregado
SET depto = "9412"
WHERE codigo IN ("43502","43503","43504");
 
UPDATE empregado
SET depto = "9413"
WHERE codigo IN ("43505","43506","43507","43508");
 
--Realize um Select para todos os dados do Banco de Dados
SELECT * FROM empregado;
 
--Realize um Select na coluna nome onde o salário for igual a R$6800.00
SELECT nome FROM empregado
WHERE salario = 6800.00;
 
--Realize um Select da coluna código e nome onde o sálario for igual a R$5200.00
SELECT codigo, nome FROM empregado
WHERE salario = 5200.00;
 
--Realize um Select na coluna DEPTO onde o salário for maior que R$3000.00 e menor que R$5500.00
SELECT depto FROM empregado
WHERE salario BETWEEN 3000.00 AND 5500.00;
 
--Realize um Select da coluna Codigo e DEPTO onde o salário estiver entre R$2600.00 e R$3380.00
SELECT codigo, depto FROM empregado
WHERE salario BETWEEN 2600.00 AND 3380.00;
 
--Realize um Select da coluna nome onde o DEPTO for 9411 e 9412
SELECT nome FROM empregado
WHERE depto = 9411 OR depto = 9412;
 
--Realize um Select de DEPTO, salário e nome onde o código for 43500 ou 43502
SELECT depto, salario, nome FROM empregado
WHERE codigo = 43500 OR codigo = 43502;
 
--Realize um Select SUM de todos os salários da tabela
SELECT SUM(salario) AS soma_salario FROM empregado;