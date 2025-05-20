use ecommmerce;
-- 1. Quantos pedidos foram feitos por cada cliente?
SELECT 
    c.idClient,
    CONCAT(c.Pnome, ' ', c.Sobrenome) AS NomeCliente,
    COUNT(o.idorders) AS QuantidadePedidos
FROM 
    client c
LEFT JOIN 
    orders o ON c.idClient = o.Cliente_idCliente
GROUP BY 
    c.idClient, c.Pnome, c.Sobrenome;


-- 2. Algum vendedor também é fornecedor?

SELECT 
    s.idTerceiroVendedor,
    s.RazãoSocial AS NomeVendedor,
    f.NomeDoFornecedor AS NomeFornecedor
FROM 
    seller s
JOIN 
    supplier f ON s.RazãoSocial = f.NomeDoFornecedor;


-- 3. Relação de produtos, fornecedores e estoques

SELECT 
    p.idProduct,
    p.Descrição AS NomeProduto,
    f.NomeDoFornecedor,
    s.Local AS LocalEstoque
FROM 
    product p
JOIN 
    supplier f ON p.idProduct = f.idProduct
LEFT JOIN 
    storageLocation sl ON p.idProduct = sl.Produto_idProduto
LEFT JOIN 
    storage s ON sl.Estoque_idEstoque = s.idEstoque;


-- 4. Relação de nomes dos fornecedores e nomes dos produtos

SELECT 
    f.NomeDoFornecedor,
    p.Descrição AS NomeProduto
FROM 
    supplier f
JOIN 
    product p ON f.idProduct = p.idProduct;
