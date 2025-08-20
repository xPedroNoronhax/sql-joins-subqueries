/*A diretoria precisa de um relatório consolidado que relacione os clientes às suas contas bancárias e respectivos saldos. Esse relatório será utilizado para apresentar uma visão geral da base de clientes e do desempenho financeiro das contas.

Como você criaria uma consulta que combine os dados de clientes, contas e saldos, utilizando subconsultas?*/

SELECT 
	c.nome,co.NumeroConta,co.TipoConta,co.Saldo
    from TabelaClientes c
join TabelaClienteConta cc
on c.id_cliente = cc.id_cliente
join TabelaConta co 
on cc.id_conta = co.id_conta;

SELECT nome,
	(SELECT
     	numeroconta
     from TabelaConta
     where TabelaConta.id_conta = TabelaClienteConta.id_conta) as numeroDaConta,
     (SELECT
      	tipoconta
      from TabelaConta
      where TabelaConta.id_conta = TabelaClienteConta.id_conta) as tipoDaConta,
      (SELECT 
       saldo
       from TabelaConta
       where TabelaConta.id_conta = TabelaClienteConta.id_conta) as Saldo
   from TabelaClientes
   join TabelaClienteConta
   on TabelaClientes.id_cliente = TabelaClienteConta.id_cliente;
   
   SELECT 
    Nome, 
    (SELECT NumeroConta 
     FROM TabelaConta 
     WHERE TabelaConta.id_conta = TabelaClienteConta.id_conta) AS NumeroConta, 
    (SELECT TipoConta 
     FROM TabelaConta 
     WHERE TabelaConta.id_conta = TabelaClienteConta.id_conta) AS TipoConta, 
    (SELECT Saldo 
     FROM TabelaConta 
     WHERE TabelaConta.id_conta = TabelaClienteConta.id_conta) AS Saldo
FROM TabelaClientes
JOIN TabelaClienteConta ON TabelaClientes.id_cliente = TabelaClienteConta.id_cliente;
     
