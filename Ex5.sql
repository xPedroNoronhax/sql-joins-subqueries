/*O banco está planejando uma campanha de marketing para clientes com alto potencial financeiro. Para isso, é necessário identificar quais possuem uma pontuação de crédito acima da média, tornando-os candidatos a ofertas especiais.

Qual consulta SQL, você utilizaria para listar os nomes e as pontuações dos clientes com score superior à média geral?*/

SELECT
	c.nome,
    s.pontuacao
from TabelaClientes c 
join TabelaScoreCredito s 
on c.id_cliente = s.id_cliente
WHERE pontuacao > (
  SELECT AVG(pontuacao)
  from TabelaScoreCredito);