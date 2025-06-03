# Online Shopping Analytics Project
In an era dominated by online commerce, understanding customer behavior is paramount. This project delves into the dynamics of online shopping, aiming to extract actionable insights from a comprehensive dataset.

## Project Overview
### Dataset:
The project utilized the "Online Shopping Dataset" sourced from Kaggle. This dataset contains comprehensive information, including transaction details, product descriptions, and more. It played a crucial role as the foundation for exploring various aspects of online shopping behavior.

Dataset Source: ['🛒 Online Shopping Dataset 📊📉📈'](https://www.kaggle.com/datasets/jacksondivakarr/online-shopping-dataset/data)

### Project Objective(s):
The Online Shopping Analytics project aims to gain actionable insights into customer behavior and transactional patterns within the context of the online shopping dataset. The primary objective was to understand various dynamics, including customer demographics, product popularity, spending patterns, and engagement with promotional activities such as coupons.

### Exploration Questions:
The project aimed to address key questions related to online shopping behavior:
  - Which products or product categories are most popular among customers?
  - How do spending patterns vary throughout the year?
  - What location does have the highest sales for a particular product?

### Tools and Technologies:
The project utilized the following tools and technologies:
  - **SQL (Structured Query Language):** The primary language used for data manipulation, exploration, and analysis.
  - **SQL Server Management Studio (SSMS):** For database creation, data parsing, and initial data exploration.
  - **Tableau:** For creating a variety of visualizations and interactive dashboards based on SQL query findings.
  - **Excel:** While not directly used in the project, the dataset obtained from Kaggle was in Excel format, serving as the initial file type for data exploration.

This combination of tools facilitated a comprehensive approach to the analysis, from database creation and exploration using SQL to visual representation and interactive dashboards in Tableau. The dataset's initial format in Excel underscored the importance of diverse tools in handling and extracting insights from real-world datasets.

## Approach
1. Obtained the online shopping dataset in Excel format from Kaggle, encompassing customer demographics, transaction details, and product descriptions.
2. Created a relational database in SQL Server Management Studio (SSMS) using SQL queries to establish tables for Customer, Product, and Transactions.
3. Imported the Kaggle dataset into SSMS and utilized SQL queries to parse the data into their respective tables.
4. Ensured data quality and consistency by addressing any missing or inconsistent values.
5. Conducted a comprehensive exploration of the dataset using SQL queries.
   - Examined key attributes, identified patterns, and gained insights into product popularity, and transactional patterns.
6. Transitioned the database to Tableau for developing insightful visualizations based on SQL query findings.
7. Developed a variety of visualizations, including bar graphs, area graphs, and packed bubble charts.
8. Grouped visualizations into dashboards focusing on key aspects such as sales analysis and location insights.

This approach involves a systematic progression from dataset acquisition to database development, data import, exploration, and visualization. Each step contributes to a cohesive and user-friendly understanding of the online shopping behavior in this dataset.

## Data Visualizations
Transitioning to Tableau, the SQL query findings were used as a basis to create a variety of visualizations. Each visualization aimed to reveal patterns, trends, and relationships within the dataset. Notable visualizations included:
  - **Bar Graphs:** Total sales by product category, highest spending consumer analysis.
  - **Area and Bar Graphs:** Average discount percentage vs total sales throughout the year.
  - **Packed Bubble Chart:** Total spending distribution across locations.
  - **Treemaps:** Product categories by total sales.

The individual visualizations were grouped into five interactive dashboards:
  - **Sales Analysis Dashboard:** Analyzes total sales by product category, transactional patterns, and customer distribution by gender and tenure range.
  - **Location Analysis Dashboard:** Explores total spending distribution across locations and product categories.

After receiving feedback, the five dashboards have been consolidated into a comprehensive hub:
  - **Online Shopping Insights Hub:** Integrates all five dashboards into a single interface, offering in-depth analysis of insights and patterns.
    

## Files Included
  - ['Dashboards']: The interactive dashboards created on Tableau. *Note: These are just images of the interactive dashboards*
  - ['README.md']: This file provides an overview of the project.
  - ['create_database.sql']: The Raw SQL query for constructing the relational database.
  - ['analyze_data.sql']: The Raw SQL query for extensive dataset exploration.
  - ['er-diagram.png']: This file provides a simple ER diagram depicting the relational database structure.
  - ['online_shopping_analytics_dashboards']: This compromises of all the data visualizations and interactive dashboards.
    
## Conclusion
**Sales Analysis:**
The Sales Analysis Dashboard uncovers that office items dominate in terms of the number of sales, constituting 37% of the platform's total sales. Surprisingly, offline spending contributes significantly to the overall customer expenditure, meaning that in-store sales are still superior to online sales. Contrary to initial assumptions, the correlation between discounts and total sales or customer spending is not as substantial.

**Location Analysis:**
The Location Analysis Dashboard highlights the outstanding performance of Chicago and California compared to New York, New Jersey, and Washington D.C. Interestingly, apparels emerge as the leading category in terms of total spending in Chicago and California, contrary to the fact that office items are the most frequently purchased.


## Info:
This is group project that I did including two other members for my Data Intensive Computing course. 
