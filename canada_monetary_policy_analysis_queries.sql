
-- Query 1
SELECT
    Year,
    ROUND(AVG(InterestRate), 2) AS Global_Avg_Rate,
    CASE
        WHEN AVG(InterestRate) > 6 THEN 'High Rate Regime'
        WHEN AVG(InterestRate) BETWEEN 2 AND 6 THEN 'Moderate Rate Regime'
        ELSE 'Low Rate Regime'
    END AS Regime_Type
FROM InterestRate_CD
GROUP BY Year
ORDER BY Year DESC;

-- Query 2
SELECT
    Country,
    ROUND(STDEV(InterestRate), 2) AS Volatility
FROM InterestRate_CD
GROUP BY Country
ORDER BY Volatility DESC;

-- Query 3
SELECT
    Country,
    Year,
    ROUND(AVG(InterestRate), 2) AS Avg_Rate
FROM InterestRate_CD
WHERE Year BETWEEN 2019 AND 2021
GROUP BY Country, Year
ORDER BY Year, Country;

-- Query 4
SELECT
    Country,
    ROUND(STDEV(InterestRate), 2) AS Volatility,
    ROUND(MAX(InterestRate) - MIN(InterestRate), 2) AS Rate_Range
FROM InterestRate_CD
GROUP BY Country
ORDER BY Volatility DESC;

-- Query 5
SELECT
    YEAR(f.Date) AS Year,
    ROUND(AVG(f.InterestRate), 2) AS Avg_Fed_Rate,
    ROUND(AVG(c.InterestRate), 2) AS Avg_Canada_Rate,
    ROUND(AVG(f.InterestRate - c.InterestRate), 2) AS Avg_Spread,
    CASE
        WHEN AVG(f.InterestRate - c.InterestRate) > 0 THEN 'Fed Higher'
        WHEN AVG(f.InterestRate - c.InterestRate) < 0 THEN 'Canada Higher'
        ELSE 'Equal'
    END AS Policy_Leader
FROM InterestRate_CD f
JOIN InterestRate_CD c
    ON f.Date = c.Date
WHERE f.Country = 'FederalReserve'
AND c.Country = 'BankOfCanada'
GROUP BY YEAR(f.Date)
ORDER BY Year DESC;

-- Query 6
SELECT
    YEAR(i.Date) AS Year,
    ROUND(AVG(i.InterestRate), 2) AS Avg_InterestRate,
    ROUND(AVG(m.Inflation), 2) AS Avg_Inflation,
    ROUND(
        AVG(m.Inflation) -
        LAG(AVG(m.Inflation)) OVER (ORDER BY YEAR(i.Date)), 2
    ) AS Inflation_Change
FROM InterestRate_CD i
JOIN CanadaMacro_CD m
    ON i.Date = m.Date
WHERE i.Country = 'BankOfCanada'
GROUP BY YEAR(i.Date)
ORDER BY Year DESC;

-- Query 7
SELECT
    YEAR(i.Date) AS Year,
    ROUND(AVG(i.InterestRate), 2) AS Avg_InterestRate,
    ROUND(
        AVG(i.InterestRate) -
        LAG(AVG(i.InterestRate)) OVER (ORDER BY YEAR(i.Date)), 2
    ) AS Rate_Change,
    ROUND(AVG(m.GDP), 2) AS Avg_GDP,
    ROUND(
        AVG(m.GDP) -
        LAG(AVG(m.GDP)) OVER (ORDER BY YEAR(i.Date)), 2
    ) AS GDP_Change
FROM InterestRate_CD i
JOIN CanadaMacro_CD m
    ON i.Date = m.Date
WHERE i.Country = 'BankOfCanada'
GROUP BY YEAR(i.Date)
ORDER BY Year DESC;

-- Query 8
SELECT
    YEAR(i.Date) AS Year,
    AVG(i.InterestRate) AS AvgInterestRate,
    AVG(m.Unemployment) AS AvgUnemployment
FROM InterestRate_CD i
JOIN CanadaMacro_CD m
    ON i.Date = m.Date
WHERE i.Country = 'BankOfCanada'
GROUP BY YEAR(i.Date)
ORDER BY Year DESC;

-- Query 9
SELECT
    YEAR(i.Date) AS Year,
    AVG(i.InterestRate) AS AvgPolicyRate,
    AVG(m.GDP) AS AvgGDP,
    AVG(m.Unemployment) AS AvgUnemployment
FROM InterestRate_CD i
JOIN CanadaMacro_CD m
    ON i.Date = m.Date
WHERE i.Country = 'BankOfCanada'
GROUP BY YEAR(i.Date)
ORDER BY Year DESC;

-- Query 10
SELECT
    YEAR(i.Date) AS Year,
    AVG(i.InterestRate) AS AvgPolicyRate,
    AVG(m.GDP) AS AvgGDP,
    AVG(m.Unemployment) AS AvgUnemployment
FROM InterestRate_CD i
JOIN CanadaMacro_CD m
    ON i.Date = m.Date
WHERE i.Country = 'BankOfCanada'
GROUP BY YEAR(i.Date)
HAVING AVG(i.InterestRate) > 4
ORDER BY Year DESC;
