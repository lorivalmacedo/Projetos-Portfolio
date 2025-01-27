-- Relação de produtos fornecedores e estoques;
with tb_produtos as(
	select fornecedor.idFornecedor, fornecedor.RazaoSocial, produto.Nome,
		SUM(estoque.Quantidade) as qtd_total, SUM(estoque.ValorUnitario) as valor_estoque
    from estoque
    left join fornecedor on estoque.Fornecedor_idFornecedor = fornecedor.idFornecedor
    left join produto on estoque.Produto_IDProduto = produto.IDProduto
    group by 1, 2, 3
)
select *
from tb_produtos