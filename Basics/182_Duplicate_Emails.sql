SELECT distinct P1.email 
FROM Person P1
INNER JOIN Person P2
ON P1.email = P2.email
WHERE P1.id <> P2.id;
