-- Aqui você deve colocar os códigos SQL referentes às
-- Simulações de um CRUD

-- Criação

-- 1)

INSERT INTO clientes
    (nome, lealdade)
VALUES
    ('Georgia', 0);

-- 2)

INSERT INTO pedidos 
    (status, cliente_id)
VALUES
    ('Recebido', 6);

-- 3)

INSERT INTO produtos_pedidos
    (pedido_id, produto_id)
VALUES
    (6, 1),
    (6, 2),
    (6, 6),
    (6, 8),
    (6, 8);

-- Leitura

-- 1)

SELECT c.id, c.nome, c.lealdade, p.id, p.status, p.cliente_id, pr.id, pr.nome, pr.tipo, pr.preco, pr.pts_de_lealdade FROM produtos_pedidos pp 
    INNER JOIN produtos pr ON pp.produto_id = pr.id 
    INNER JOIN pedidos p ON pp.pedido_id = p.id
    INNER JOIN clientes c ON p.cliente_id = c.id
WHERE pp.pedido_id = 6;

-- Atualização

-- 1)



-- Deleção

-- 1)


