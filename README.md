# Airline Customer Loyalty Program Analysis

## Project Overview
This project analyzes customer loyalty program data from Northern Lights Air (NLA), a fictitious airline based in Canada. To improve program enrollment, NLA conducted a promotion between February and April 2018. The dataset includes details on loyalty program signups, enrollment, cancellations, and additional customer information.

## Data Source
The data was obtained from Maven Analytics and originally sourced from IBM Cognos Analytics.

## Datasets Used
The project utilizes the following datasets:
- **Customer Loyalty History.csv**: Contains information about loyalty program enrollments, cancellations, and customer details.
- **Customer Flight Activity.csv**: Provides flight activity data, including the number of flights taken and loyalty points accumulated by members.

## Project Structure
```
├── reports                          <- Final reports/results of this project.
│   ├── Airline_Loyalty_Program_report.pdf         <- PDF report with final analysis.
│   ├── Airline_Loyalty_Program_report.pbix        <- Power BI report file.
│   ├── Airline_Loyalty_Program_SQL_Queries.pdf  <- SQL query report for verification.
│
├── SQL queries                      <- Code for database creation and queries.
│   ├── Airline_Loyalty_Program_schema.sql <- SQL schema for database creation.
│   ├── Airline_Loyalty_Program_cleaning.sql <- SQL data cleaning queries.
│   ├── Airline_Loyalty_Program_analysis.sql <- SQL queries for analysis.
│
├── src                              <- Project source files.
│   ├── data                         <- Datasets used in this project.
│   ├── images                       <- Images for dashboards.
│   ├── Airline_Loyalty_Data_Dictionary.csv <- Data dictionary for reference.
│
├── LICENSE                          <- Project license information.
├── README.md                        <- Project README (this file).
```

## Preview of Analysis
The project includes four key analytical reports:
1. **Flight Analysis**: Examined flight activity, distance traveled, and points earned by customers.
2. **Customer Demographics**: Analyzed customer information including gender, income, education, and region.
3. **Loyalty Trends**: Investigated loyalty status, customer lifetime value (CLV), and points usage.
4. **Enrollment and Cancellation Trends**: Assessed the impact of the 2018 promotion and analyzed customer retention.

## Methodology & Tools Used
- **Data Processing & Analysis**: MySQL
- **Dashboard Development**: Power BI
- **Insights & Reporting**: SQL queries and Power BI visualizations

## Key Insights
- Identified customer demographics that influenced loyalty program enrollment.
- Analyzed cancellation patterns to suggest improvements for customer retention strategies.

---

📌 *For more details, check the reports and dashboards in the* `reports` *folder.*

