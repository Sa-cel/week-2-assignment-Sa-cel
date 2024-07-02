-- Part 1: Retrieving Data with SELECT

-- 1.1 Retrieving All Expenses
SELECT * FROM Expenses;

-- 1.2 Specific Columns
SELECT date, category, amount FROM Expenses;

-- 1.3 Filtering by Date Range
SELECT * FROM Expenses
WHERE date BETWEEN '2021-01-01' AND '2024-12-15';

-- Part 2: Filtering with WHERE Clause

-- 2.1 Filtering by Category
SELECT * FROM Expenses
WHERE category = 'Entertainment';

-- 2.2 Filtering with Comparison Operators
SELECT * FROM Expenses
WHERE amount > 50;

-- 2.3 Combining Filters (AND)
SELECT * FROM Expenses
WHERE amount > 75 AND category = 'Food';

-- 2.4 Combining Filters (OR)
SELECT * FROM Expenses
WHERE category = 'Transportation' OR category = 'Groceries';

-- 2.5 Filtering with NOT
SELECT * FROM Expenses
WHERE category != 'Rent';

-- Part 3: Sorting Retrieved Data

-- 3.1 Sorting by Amount
SELECT * FROM Expenses
ORDER BY amount DESC;

-- 3.2 Sorting by Date and Category
SELECT * FROM Expenses
ORDER BY date DESC, category ASC;

-- Part 4: Database Upgrade

-- 4.1 Creating the "Income" Table
CREATE TABLE Income (
    income_id INT AUTO_INCREMENT PRIMARY KEY,
    amount DECIMAL(10,2) NOT NULL,
    date DATE NOT NULL,
    source VARCHAR(50) NOT NULL
);

-- 4.2 Adding a New Column "category"
ALTER TABLE Income
ADD COLUMN category VARCHAR(50);

-- 4.3 Removing the "source" Column
ALTER TABLE Income
DROP COLUMN source;

-- Dropping the "Income" Table
DROP TABLE Income;
