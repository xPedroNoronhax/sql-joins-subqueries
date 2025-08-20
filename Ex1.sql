/*Uma análise financeira está sendo conduzida para avaliar se os salários pagos aos colaboradores estão competitivos. O departamento de Recursos Humanos solicitou um relatório que exiba a média salarial de cada departamento para decisões estratégicas de reajustes.

Sua missão é criar uma consulta SQL que calcule e exiba a média salarial por departamento, utilizando subconsultas. O resultado deve incluir o nome do departamento e o respectivo salário médio.*/

SELECT
	nomedepartamento,
 	(SELECT AVG(salario)
     FROM TabelaColaboradores
     WHERE TabelaColaboradores.id_departamento = TabelaDepartamento.id_departamento
    ) as SalarioMedio
FROM TabelaDepartamento