/*Para expandir os serviços bancários e planejar novas agências, o banco precisa de um relatório que exiba o número total de empréstimos ativos em cada cidade. Esses dados ajudarão a identificar regiões prioritárias.

Como você criaria uma consulta SQL que calcule e exiba o total de empréstimos ativos por cidade?*/

SELECT * from TabelaEmprestimo;
SELECT * from TabelaPagamentos;


SELECT
	c.cidade,
    count(e.id_emprestimo)
from TabelaClientes c
join TabelaEmprestimo e
on c.id_cliente = e.id_cliente
WHERE e.Status = 1
GROUP by c.Cidade;

