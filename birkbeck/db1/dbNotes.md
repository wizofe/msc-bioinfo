# Introduction to Databases

## Resources and Articles

This is a really useful website, where you can test your `SQL` skills: [SQLJS](https://sqljs.org/). It allows to create tables on the fly and run `SQL `queries on them. Great learning tool!

A few introductory articles like the ones from [W.S.Vincent](https://wsvincent.com/database-design-tutorial-for-beginners/), as well as the classic one from [Paul Litwin](http://r937.com/Relational.HTML) of Microsoft SQL Team, written before 15 years but still applies today. Paul is today the Programming Core Manager of the Fred Hutchinson Cancer Research Center.

There is also this interesting tutorial from [Nanyang Technological University](https://www.ntu.edu.sg/home/ehchua/programming/sql/Relational_Database_Design.html).

If you don't have enough time though (and need to submit that coursework), look no further than this course from [Audacity](https://classroom.udacity.com/courses/ud197/)! A great and intuitive way to understanding basic databases. There's also this database [design](https://www.lucidchart.com/pages/database-diagram/database-design) guide from Lucidchart. Need to go deeper?

- Design your [own](https://www.dartmouth.edu/~bknauff/dwebd/2004-02/DB-intro.pdf) database.
- A great introduction to [databases](https://web.stanford.edu/class/cs145/) by Stanford University.

## Talking in `SQL`

When do you use those statements?

If you want to make several pages of results:

```mysql
LIMIT count [OFFSET skip] 
ORDER BY columns [DESC]
```

count: how many results go in one page

offset: how deep in to start

`GROUP BY` used only for *aggregations* like `COUNT` or `SUM`.

```mysql
GROUP BY columns
```

Instead of aggregating through all the rows, do it for the ones that share a common value.

Example (from udacity): "Write a query that returns all the species in the zoo, and how many animals of each species there are, sorted with the most populous species at the top". I am going to use {}, just for 

```mysql
SELECT COUNT(*) AS num, species # columns
	FROM animals				# tables
	GROUP BY species			# aggregation -> COUNT(*)
	ORDER BY num DESC;			# sorting
```

To `INSERT` a column in a new table simply:

```mysql
INSERT INTO table ( column1, column2, ... ) VALUES ( val1, val2, ... );
```

To [join two tables](https://classroom.udacity.com/courses/ud197/), first choose the *join condition*, or the rule you want the database to use to match rows from one table up with rows of the other table. Then write a join in terms of the columns in each table.

For instance, if you want to join tables **T** and **S** by matching rows where **T.color** is the same as **S.paint**, you'd write a select statement using **T join S on T.color = S.paint**.

```mysql
SELECT T.thing, S.stuff,    # rows
	FROM T JOIN S		    # joined tables short version: FROM T, S
	ON T.target = S.match   # join conditions
```

```mysql
SELECT T.thing 
	FROM T,S
	WHERE T.color = S.paint 	  # condition
	AND T.surface = 'wood'  # restriction
```

The `HAVING` clause works like the `WHERE` clause, but it applies after `GROUP BY` aggregations take place. The syntax is like this:

```sql
SELECT columns FROM tables GROUP BY column HAVING condition;
```

Usually, at least one of the *columns* will be an aggregate function such as `COUNT`, `MAX`, or `SUM` on one of the tables' columns. In order to apply `HAVING` to an aggregated column, you'll want to give it a name using `AS`. For instance, if you had a table of items sold in a store, and you wanted to find all the items that have sold more than five units, you could use:

```mysql
SELECT name, COUNT(*) AS num FROM sales HAVING num > 5;
```

You can have a `SELECT` statement that uses only `WHERE`, or only `GROUP BY`, or `GROUP BY` and `HAVING`, or `WHERE` and `GROUP BY`, or all three of them!

But it doesn't usually make sense to use `HAVING` without `GROUP BY`.

If you use both `WHERE` and `HAVING`, the `WHERE` condition will filter the rows that are going into the aggregation, and the `HAVING` condition will filter the rows that come out of it.

