  Monetary Policy & Canadian Economic Analysis

**Author:** Emilomo Joan Atale  
**Date:** March 2026  

## Project Overview
This project analyzes  how changes in central bank interest rates influence key macroeconomic indicators in Canada, including inflation, GDP growth, and unemployment. The analysis also compares Canada's monetary policy with those of major global central banks to understand broader global monetary policy dynamics.

Using historical data from 1980 to 2025, the study explores how monetary policy decisions affect economic conditions and how central banks respond to global economic events.

---

## Research Question
How do interest rate changes influence inflation, GDP growth, and unemployment in Canada, and how closely does Canadian monetary policy follow global central bank trends, particularly those of the U.S. Federal Reserve?

---

## Data Sources
The analysis uses two datasets obtained from Kaggle.

### InterestRate_CD
Historical policy interest rates for major global central banks including:

- Federal Reserve  
- Bank of Canada  
- European Central Bank  
- Bank of England  
- Swiss National Bank  
- People’s Bank of China  
- Reserve Bank of Australia  

### CanadaMacro_CD
Canadian macroeconomic indicators, including:

- Inflation rate  
- GDP growth  
- Unemployment rate  

These datasets were combined to evaluate relationships between monetary policy decisions and economic performance.

---

## Tools Used

- **SQL Server** – Database storage and query execution  
- **SQL** – Data extraction, aggregation, and transformation  
- **Python** – Statistical analysis and visualization  
- **Power BI** – Interactive dashboard development  
- **Power Query & DAX** – Data cleaning and transformation  
- **Microsoft Word** – Project documentation  

---

## Methodology

The project follows a structured data analytics workflow:

1. Data Collection  
2. Data Cleaning  
3. Data Exploration  
4. SQL Analysis  
5. Statistical Analysis using Python  
6. Data Visualization using Power BI  
7. Interpretation and Reporting  

### Data Cleaning
Data cleaning and preparation were conducted using Power Query and DAX in Power BI.

Key steps included:

- Handling missing values in the ECB dataset (ECB established in 1998)
- Converting the Date column to a proper date format
- Merging macroeconomic and interest rate datasets using the Date field
- Verifying numeric data types for economic indicators

---

## SQL Analysis

SQL queries were used to prepare and analyse the datasets. Key techniques included:

- GROUP BY aggregations for yearly averages  
- CASE statements for interest rate regime classification  
- Standard deviation calculations to measure volatility  
- JOIN operations between datasets  
- Window functions such as LAG() to analyze policy changes  

---

## Python Data Analysis

Python was used for additional statistical analysis and time-series visualization.
<img width="1400" height="607" alt="image" src="https://github.com/user-attachments/assets/3a15ad8c-25a6-4ab6-add5-b78cdc0ef237" />


Libraries used:

- Pandas  
- Matplotlib  

Python was used to explore trends and relationships between macroeconomic indicators and monetary policy variables.

---

## Power BI Dashboard
<img width="1523" height="852" alt="image" src="https://github.com/user-attachments/assets/a2d4c223-0406-43e3-838d-7ce2af9bfa80" />


An interactive Power BI dashboard was developed to visualize relationships between interest rates and macroeconomic indicators.

The dashboard allows users to explore:

- Interest Rate vs Inflation  
- Interest Rate vs GDP Growth  
- Interest Rate vs Unemployment  
- Central Bank Interest Rate Trends  
- Global Monetary Policy Patterns  

---

## Key Findings

- Global interest rates transitioned from high inflation regimes in the 1980s to ultra-low-rate environments following the 2008 financial crisis.
- Major central banks tend to synchronise policy direction during global crises.
- Canada demonstrates partial monetary policy alignment with the U.S. Federal Reserve.
- Interest rate increases tend to reduce inflation but slow GDP growth.
- The Canadian labour market shows relative stability despite policy rate fluctuations.

---

## Future Work

Future research could expand this analysis by:

- Incorporating additional datasets such as government bond yields and exchange rates
- Applying econometric models such as regression or vector autoregression (VAR)


## Author

**Emilomo Joan Atale**

Business & Information Systems Architecture  
Financial Data Analyst | Power BI | SQL | Python
