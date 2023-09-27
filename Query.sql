SELECT "Marital Status", AVG(Age) AS "Rata-rata Umur"
FROM Customer
GROUP BY "Marital Status";

SELECT CASE
           WHEN Gender = 1 THEN 'Male'
           WHEN Gender = 0 THEN 'Female'
       END AS "Gender",
       AVG(Age) AS "Rata-rata Umur"
FROM Customer
GROUP BY Gender;

SELECT store.storename, SUM(Qty) AS "Total Quantity"
FROM store
JOIN "Transaction" t  ON t.StoreID = store.StoreID
GROUP BY store.storename
ORDER BY "Total Quantity" DESC
LIMIT 1;

SELECT p."Product Name", SUM(t."totalamount") AS "Total Amount"
FROM "Transaction" t
JOIN "product" p ON t."productid" = p."productid"
GROUP BY p."Product Name"
ORDER BY "Total Amount" DESC
LIMIT 1;






