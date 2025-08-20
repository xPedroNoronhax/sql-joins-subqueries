/*O setor financeiro quer entender o comportamento dos clientes em relação aos pagamentos realizados para diferentes tipos de empréstimos. Como parte desse estudo, é necessário calcular a média dos valores pagos para cada tipo de empréstimo.

Escreva uma consulta SQL que exiba o tipo de empréstimo e a média dos valores pagos pelos clientes, utilizando subconsultas para realizar o cálculo.*/

SELECT
	e.tipo,
    AVG(p.valor)
from TabelaEmprestimo e
JOIN TabelaPagamentos p
on e.id_emprestimo = p.id_emprestimo
WHERE p.Status = 'Pago'
GROUP by e.Tipo;

SELECT 
    Tipo, 
    (SELECT AVG(Valor) 
     FROM TabelaPagamentos 
     WHERE TabelaPagamentos.id_emprestimo = TabelaEmprestimo.id_emprestimo AND Status = 'Pago') AS MediaPagamentos
FROM TabelaEmprestimo;


