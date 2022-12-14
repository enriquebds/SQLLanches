-- Aqui você deve colocar os códigos SQL referentes às
-- Seleções de dados

-- 1)

SELECT 
	pr.id,
    pr.status, 
    pr.cliente_id, 
    prod.id, prod.nome, 
    prod.tipo, prod.preco, 
    prod.pts_de_lealdade 
    
FROM produtos_pedidos pp 
    INNER JOIN produtos prod ON pp.produto_id = prod.id 
    INNER JOIN pedidos pr ON pp.pedido_id = pr.id;

-- 2)

SELECT p.id id FROM produtos_pedidos pp
	INNER JOIN produtos pr ON pp.produto_id = pr.id
    INNER JOIN pedidos p ON pp.pedido_id = p.id
WHERE 
    pr.nome = 'Fritas'

-- 3)

SELECT client.nome gostam_de_fritas FROM produtos_pedidos pp
	INNER JOIN produtos pr ON pp.produto_id = pr.id
    INNER JOIN pedidos p ON pp.pedido_id = p.id
    INNER JOIN clientes client ON p.cliente_id = client.id
WHERE 
	pr.nome = 'Fritas'

-- 4)

SELECT sum(pr.preco) sum FROM produtos_pedidos pp
	 INNER JOIN produtos pr ON pp.produto_id = pr.id 
     INNER JOIN pedidos p ON pp.pedido_id = p.id 
     INNER JOIN clientes c ON p.cliente_id = c.id
WHERE 
	c.nome = 'Laura';

-- 5)

SELECT pr.nome, COUNT(pr.id) FROM produtos_pedidos pp 
    INNER JOIN produtos pr ON pp.produto_id = pr.id 
    INNER JOIN pedidos p ON pp.pedido_id = p.id
GROUP BY pr.id
    HAVING COUNT(*) > 0
    ORDER BY pr.nome;