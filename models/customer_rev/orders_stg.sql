SELECT
    "orderid" AS OrderID,
    "orderdate" AS OrderDate,
    "customerid" AS CustomerID,
    "employeeid" AS EmployeeID,
    "storeid" AS StoreID,
    "status" AS StatusCD,
    CASE
        WHEN "status" = '01' THEN 'In Progress'
        WHEN "status" = '02' THEN 'Completed'
        WHEN "status" = '03' THEN 'Cancelled'
        ELSE NULL
    END AS StatusDesc,
    CASE
        WHEN "storeid" = 1000 THEN 'Online'
        ELSE 'In-store'
    END AS ORDER_CHANNEL,
    "updated_at" AS Updated_at,
    current_timestamp AS dbt_updated_at
FROM
    {{ source('landing', 'orders') }}
