CREATE VIEW menuitems AS
(SELECT m.mealid AS menuitemid, m.name, CAST(SUM(price * (1 - discount)) AS NUMERIC(5,2)) AS price
 FROM meals m LEFT OUTER JOIN partof p ON m.mealid = p.mealid
              LEFT OUTER JOIN items i ON p.itemid = i.itemid
 GROUP BY m.mealid, m.name)
UNION
(SELECT itemid, name, price
 FROM items);