/*O setor de Recursos Humanos precisa comparar a competitividade salarial e analisar possíveis ajustes. Assim, estão revisando os salários dos colaboradores e identificando discrepâncias nos valores pagos. Como parte dessa análise, é necessário identificar qual é o maior salário registrado em cada departamento.

Crie uma consulta para identificar o maior salário em cada departamento, exibindo o nome do departamento e o valor do maior salário.*/

SELECT
	d.nomedepartamento,
    MAX(col.salario)
from TabelaDepartamento d 
join TabelaColaboradores col 
on d.id_departamento = col.id_departamento
GROUP by d.id_departamento;

SELECT 
    NomeDepartamento,
    (SELECT MAX(Salario) 
     FROM TabelaColaboradores 
     WHERE TabelaColaboradores.id_departamento = TabelaDepartamento.id_departamento) AS MaiorSalario
FROM TabelaDepartamento;