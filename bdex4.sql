USE BDEX4_ESTOQUE;
#1. Exibir todas as informações da tabela `PRODUTOS`.

select * 
from produtos;

#2. Mostrar os nomes e preços dos produtos que custam mais de 50,00.

select nome_pro, preco
from produtos
where preco > 50;

#3. Listar os nomes e cidades dos fornecedores.

select nome_for, cidade
from fornecedores;

#4. Exibir os detalhes dos pedidos de compra: ID do pedido, data, hora e nome do fornecedor.

select p.id_pedido as numero, concat_ws(' | ', p.data_pedido, p.hora_pedido) as data , f.NOME_FOR as nome
from pedidos_compra as p
inner join fornecedores as f
on p.fornecedor = f.id_fornecedor;

#5. Listar o nome dos produtos e a quantidade disponível em cada armazém.

select p.nome_pro, pa.quantidade,a.NOME_ARMAZEM
from produtos as p
inner join produtos_armazens as pa
on p.id_produto = pa.produto
inner join armazens as a
on a.ID_ARMAZEM = pa.armazem;

#6. Mostrar os nomes dos fornecedores que têm produtos no armazém de "São Paulo".

select distinct f.nome_for, a.cidade_armazem
from fornecedores as f
inner join produtos_fornecedores as pf
on pf.fornecedor = f.ID_FORNECEDOR
inner join produtos as p
on pf.PRODUTO = p.id_produto
inner join produtos_armazens as pa
on pa.produto = p.ID_PRODUTO
inner join armazens as a
on pa.ARMAZEM = a.ID_ARMAZEM
where CIDADE_ARMAZEM Like '%são paulo%';

#7. Listar todos os armazéns, ordenados pelo nome do armazém de A a Z.

select nome_armazem
from armazens 
order by nome_armazem;

#8. Mostrar os nomes dos produtos que têm a palavra "Premium" na descrição.

select descricao
from produtos 
where descricao Like '%Premium%';

#9. Exibir os detalhes dos produtos: ID do produto, nome, descrição, preço e nome dos fornecedores.

#10. Para cada pedido de compra, mostrar o ID do pedido e a quantidade total de produtos solicitados.

#11. Contar quantos produtos cada fornecedor oferece.

#12. Listar os nomes dos produtos e a quantidade disponível no armazém "Rio de Janeiro".

#13. Mostrar o nome dos fornecedores e a data e hora do último pedido de compra que eles receberam.

#14. Contar quantos pedidos de compra cada fornecedor recebeu.

#15. Para cada armazém, exibir o nome do armazém e a quantidade total de produtos armazenados nele.