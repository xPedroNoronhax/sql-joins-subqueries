/*O banco deseja recompensar clientes que quitaram todos os seus empréstimos com benefícios exclusivos, como taxas reduzidas e maiores limites de crédito. Para isso, é necessário identificar quais clientes não possuem pagamentos pendentes.

Crie uma consulta SQL que liste os clientes com todos os empréstimos quitados, utilizando subconsulta para verificar pendências de pagamento.*/

SELECT
	c.Nome,
    c.Email,
    e.valor
from TabelaClientes c
join TabelaEmprestimo e
on c.id_cliente = e.id_cliente
WHERE not EXISTS(
  SELECT * 
  from TabelaPagamentos
  where TabelaPagamentos.id_emprestimo = e.id_emprestimo AND Status != 'Pago');
  


