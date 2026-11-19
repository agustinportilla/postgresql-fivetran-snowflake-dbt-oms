SELECT
    "orderitemid" AS OrderItemID,
    "orderid" AS OrderID,
    "productid" AS ProductID,
    "quantity" AS Quantity,
    "unitprice" AS UnitPrice,
    "quantity" * "unitprice" AS TotalPrice,
    "updated_at" AS Updated_at
FROM
    {{ source('landing', 'orderitems') }}
