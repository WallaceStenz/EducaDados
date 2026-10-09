SELECT
	fv.id_venda,
	fv.numero_pedido,
	fv.data_venda,
	fv.canal,
	fv.forma_pagamento,
	fv.quantidade,
	fv.preco_unitario,
	fv.valor_desconto,
	vp.sku,
	vp.produto,
	vp.marca,
	vp.categoria,
	vp.subcategoria,
	vp.preco_lista,
	vp.custo_unitario,
	vl.loja,
	vl.cidade,
	vl.uf,
	vl.regiao,
	vl.tipo
FROM [varejo].[fVendas] fv
LEFT JOIN [varejo].[dProduto] vp ON vp.id_produto = fv.id_produto
LEFT JOIN [varejo].[dLoja] vl ON vl.id_loja = fv.id_loja
WHERE fv.data_venda BETWEEN '2023-01-01' AND '2025-12-31'