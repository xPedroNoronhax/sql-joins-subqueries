/*O banco está analisando a distribuição de crédito entre diferentes regiões para planejar estratégias de expansão e alocar recursos. É necessário entender quais cidades concentram os maiores valores de empréstimos concedidos, permitindo priorizar essas regiões em futuras campanhas de marketing e investimentos.

Como você criaria uma consulta SQL para calcular o valor total dos empréstimos por cidade, utilizando subconsultas?*/

SELECT
	c.cidade as Cidade,
    SUM(e.valor) as ValorTotalEmprestimo
from TabelaClientes c
join TabelaEmprestimo e
on c.id_cliente = e.id_cliente
GROUP by cidade

SELECT 
    c.Cidade,
    (SELECT SUM(e.Valor) 
     FROM TabelaEmprestimo e 
     WHERE e.id_cliente IN (
         SELECT cl.id_cliente 
         FROM TabelaClientes cl 
         WHERE cl.Cidade = c.Cidade
     )) AS ValorTotalEmprestimos
FROM TabelaClientes c
GROUP BY c.Cidade;
    
    