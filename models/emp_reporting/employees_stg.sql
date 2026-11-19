-- models/emp_reporting/employees_stg.sql

select
    "employeeid" as employeeid,
    "firstname" as firstname,
    "lastname" as lastname,
    "email" as email,
    "jobtitle" as jobtitle,
    "hiredate" as hiredate,
    "managerid" as managerid,
    "address" as address,
    "city" as city,
    "state" as state,
    "zipcode" as zipcode,
    "updated_at" as updated_at,
    concat("firstname", ' ', "lastname") as employeename
from
    {{ source('landing', 'employees') }}
