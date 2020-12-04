-- SELECT * FROM bangazonapi_product

-- SELECT * FROM bangazonapi_productrating;

-- SELECT * FROM bangazonapi_rating;


-- SELECT
--     *
-- FROM bangazonapi_recommendation


-- SELECT
--     *
-- FROM bangazonapi_favorite

-- SELECT
--     *
-- FROM bangazonapi_order


-- SELECT
--     p.name,
--     p.price,
--     p.description,
--     p.id
-- FROM `bangazonapi_product` p
-- WHERE p.price >= 1500.00


SELECT
    op.order_id,
    p.name,
    p.id prod_id,
    o.payment_type_id,
    op.order_id
FROM bangazonapi_order o
JOIN bangazonapi_orderproduct op ON op.product_id = p.id
JOIN bangazonapi_product p ON p.id = op.product_id

SELECT
    *
FROM bangazonapi_orderproduct

SELECT
    *
FROM bangazonapi_order

SELECT
    COUNT(op.id),
    p.name
FROM bangazonapi_orderproduct op
JOIN bangazonapi_product p ON p.id = op.product_id
JOIN bangazonapi_order o ON o.id = op.order_id
GROUP BY o.id


SELECT
    p.id prodId,
    p.name,
    op.id opId,
    op.product_id opProdId
FROM bangazonapi_product p
JOIN bangazonapi_orderproduct op ON opProdId = prodId
-- try to get ratings
-- if no ratings, return

-- get all the product line items

SELECT
    o.id orderId,
    o.payment_type_id paymentId,
    op.product_id,
    op.order_id
FROM bangazonapi_order o
LEFT JOIN bangazonapi_orderproduct op ON op.order_id = o.id