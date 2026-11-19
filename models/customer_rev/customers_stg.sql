SELECT
    "customerid" AS CustomerID,
    "firstname" AS FirstName,
    "lastname" AS LastName,
    "email" AS Email,
    "phone" AS Phone,
    "address" AS Address,
    "city" AS City,
    "state" AS State,
    "zipcode" AS ZipCode,
    "updated_at" AS Updated_at,
    CONCAT("firstname", ' ', "lastname") AS CustomerName
FROM
    {{ source('landing', 'customers') }}
