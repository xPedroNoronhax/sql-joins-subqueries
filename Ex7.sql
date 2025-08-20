/*O setor financeiro busca identificar clientes que mais utilizam os serviços de crédito do banco para criar um ranking que priorize esses clientes em ofertas futuras e também monitorar sua regularidade nos pagamentos. Para isso, é necessário calcular a quantidade de empréstimos ativos de cada cliente e ordenar os resultados de forma decrescente.

Como você criaria uma consulta SQL que liste apenas os clientes, que possuem empréstimos ativos?*/

SELECT
	nome
from TabelaClientes c
where EXISTS(
  SELECT *
  FROM TabelaEmprestimo e
  where c.id_cliente = e.id_cliente AND status = 1);