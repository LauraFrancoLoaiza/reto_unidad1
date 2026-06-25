
-- Q1 - SELECT DISTINCT
-- Lista todos los productos únicos disponibles usando un alias de columna descriptivo.
SELECT DISTINCT producto AS producto_unico
FROM ventas;

-- Q2 - WHERE + BETWEEN
-- Filtra pedidos del primer trimestre (ene–mar 2024) con cantidad mayor a 5 unidades.
SELECT *
FROM ventas
WHERE fecha BETWEEN '2024-01-01' AND '2024-03-31'
  AND cantidad > 5;

-- Q3 - GROUP BY + HAVING
-- Vendedores cuyo ingreso bruto total (cantidad × precio) supera $10,000 USD.
SELECT
    vendedor,
    SUM(cantidad * precio_unitario) AS ingreso_bruto_total
FROM ventas
GROUP BY vendedor
HAVING ingreso_bruto_total > 10000;

-- Q4 - COUNT + SUM + AVG
-- Por categoría: total de pedidos, suma de unidades vendidas y precio unitario promedio.
SELECT
    categoria,
    COUNT(*) AS total_pedidos,
    SUM(cantidad) AS unidades_vendidas,
    AVG(precio_unitario) AS precio_promedio
FROM ventas
GROUP BY categoria;

-- Q5 - JOIN
-- Crea la tabla vendedores 
CREATE TABLE IF NOT EXISTS vendedores (
vendedor TEXT PRIMARY KEY,
zona TEXT,
meta_mensual REAL
);

INSERT OR REPLACE INTO vendedores
VALUES
('Ana Lopez', 'Norte', 8000),
('Carlos Ruiz', 'Sur', 7500),
('Luis Mora', 'Norte', 8000),
('Maria Torres', 'Centro', 7000);

--calcula el % de cumplimiento de meta de cada uno.
SELECT
    v.vendedor,
    v.zona,
    v.meta_mensual,
    SUM(t.cantidad * t.precio_unitario) AS venta_total,
    ROUND(
        (SUM(t.cantidad * t.precio_unitario)
        / v.meta_mensual) * 100, 2
    ) AS porcentaje_cumplimiento
FROM vendedores v
JOIN ventas t
    ON v.vendedor = t.vendedor
GROUP BY
    v.vendedor,
    v.zona,
    v.meta_mensual;

-- Q6 - SUBCONSULTA
-- Encuentra el cliente que generó el mayor ingreso total en el primer semestre.
SELECT
    cliente_nombre,
    SUM(cantidad * precio_unitario) AS ingreso_total
FROM ventas
WHERE fecha BETWEEN '2024-01-01' AND '2024-06-30'
GROUP BY cliente_nombre
HAVING ingreso_total = (
    SELECT MAX(total_ingreso)
    FROM (
        SELECT
            SUM(cantidad * precio_unitario) AS total_ingreso
        FROM ventas
        WHERE fecha BETWEEN '2024-01-01' AND '2024-06-30'
        GROUP BY cliente_nombre
    )
);