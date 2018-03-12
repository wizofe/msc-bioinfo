-- 01.02.2018, Exam 1 in Biological Databases 
-- Ioannis Valasakis <ivalas01@mail.bbk.ac.uk>

SHOW databases;
USE biodb;

-- 1.a.
SELECT pdb_code FROM protein 
WHERE name LIKE '%fragment%';

-- 1.b.
SELECT COUNT(*) FROM protein 
WHERE YEAR(date) = 1998 
AND MONTH(date) = 01;

-- 1.c.
SELECT COUNT(DISTINCT(source)) 
FROM protein 
WHERE name LIKE '%synthetase%';

-- 1.d.
SELECT exp_method from protein 
GROUP by exp_method
HAVING COUNT(exp_method) < 100;

-- 1.e.
SELECT n_chains, AVG(resolution) FROM protein 
GROUP BY n_chains 
HAVING COUNT(n_chains) >= 10;

-- 2.a.
SELECT    DISTINCT p.name 
FROM      protein p, chain c 
WHERE     c.length > 1200;

-- 2.b.
 SELECT   DISTINCT p.name 
 FROM     cath_domain d, cath_classification c, protein p 
 WHERE    c.id = d.classification 
 AND      d.pdb_code = p.pdb_code 
 AND      c.name LIKE '%Glycosidases%';