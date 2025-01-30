# Carbon Market Analysis: Data Processing

## Overview
This repository contains SQL scripts for cleaning, transforming, and analyzing carbon credit project data from major registries including VCS (Verra), Gold Standard (GS), American Carbon Registry (ACR), and Climate Action Reserve (CAR).


## Data Sources
The data have been sourced from respsective official website of carbon credit registries. The analysis covers four major carbon credit registries:
- Verra Carbon Standard (VCS)
- Gold Standard (GS)
- American Carbon Registry (ACR)
- Climate Action Reserve (CAR)


## SQL Query Functionality
The SQL query performs the following operations:
1. Combines data from all four registries using UNION ALL.
2. Standardizes column names to ensure consistency across registries.
3. Groups data by region, country, market type, project scope, and project type.
4. Counts the number of projects in each group.
5. Sorts results by region, country, market type, and project count in descending order.

## Usage
* Ensure database access: Run the query on a SQL-compatible database containing the VCS, GS, ACR, and CAR tables.
* Modify table names if needed: Update VCS1, GS, ACR, and CAR to match your database schema.
* Run the query to retrieve aggregated insights into voluntary carbon market projects.

## License
* This project is open-source and available under the MIT License.
