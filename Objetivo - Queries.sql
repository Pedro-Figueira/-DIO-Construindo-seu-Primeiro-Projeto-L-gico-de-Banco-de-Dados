use ecommmerce;

-- 1. Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações
SELECT 
    CPF,
    COUNT(DISTINCT tipoCliente) AS TiposDeConta
FROM 
    client
GROUP BY 
    CPF
HAVING 
    COUNT(DISTINCT tipoCliente) > 1;
    
-- 2. Pagamento – Pode ter cadastrado mais de uma forma de pagamento

SELECT 
    idcliente,
    COUNT(DISTINCT typePayment) AS QuantidadeFormasPagamento
FROM 
    payments
GROUP BY 
    idcliente
HAVING 
    COUNT(DISTINCT typePayment) > 1;

-- 3. Entrega – Possui status e código de rastreio

SELECT 
    idorders,
    ordersStatus,
    codigoRastreio
FROM 
    orders
WHERE 
    codigoRastreio IS NOT NULL;


