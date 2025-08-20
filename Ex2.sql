/*O banco está conduzindo uma auditoria para identificar empréstimos com valores fora do padrão. Uma das metas é listar todos os empréstimos que possuem valores acima da média geral. Esses dados são fundamentais para reavaliar as políticas de crédito.

Diante deste cenário, escreva uma consulta SQL que exiba os nomes dos clientes e os valores de seus empréstimos, mas apenas aqueles cujo valor seja superior à média geral de empréstimos.*/

SELECT
	c.nome,
    e.valor
from TabelaClientes c
join TabelaEmprestimo e
on c.id_cliente = e.id_cliente
where valor >(
  SELECT
  AVG(valor) from TabelaEmprestimo);
  