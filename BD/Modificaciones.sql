USE PowerFullMarket;

ALTER TABLE productos ADD COLUMN CatNombre VARCHAR(50);

UPDATE productos p
JOIN categoria c ON p.CatID = c.CatID
SET
    p.CatNombre = c.CatNombre;

UPDATE inventario i
JOIN productos p ON i.ProdID = p.ProdID
SET
    i.stock = p.stock;

UPDATE carrito_compras c
JOIN clientes p ON c.ClientesID = p.ClientesID
SET
    c.Clienombre = p.Clienombre;