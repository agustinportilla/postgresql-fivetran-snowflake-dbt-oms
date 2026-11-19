# PostgreSQL to Snowflake – ELT Pipeline with Fivetran & dbt

## Project Overview

This project focuses on building an end-to-end ELT (Extract, Load, Transform) pipeline for an Order Management System (OMS) using **PostgreSQL, Fivetran, Snowflake, and dbt**.

The objective is to automate data ingestion from PostgreSQL into Snowflake using Fivetran and transform the replicated data into structured, analytics-ready datasets using dbt within the Fivetran platform.

The project demonstrates a modern cloud-based data integration and transformation workflow, following data engineering and data modeling best practices.

## Technologies

- **PostgreSQL:** Relational database serving as the source system.
- **Fivetran:** Automated data ingestion and replication from PostgreSQL to Snowflake.
- **Snowflake:** Cloud data warehouse where replicated data is stored and transformed.
- **dbt:** SQL-based data transformation and modeling, executed through the Fivetran platform.
- **SQL:** Data manipulation, transformation, and modeling.

## Data Model

The project uses an Order Management System dataset containing information about:

- Customers
- Orders
- Order Items
- Products
- Suppliers
- Stores
- Employees
- Dates

## Data Pipeline Architecture

The project follows an ELT architecture:

1. **Extract:** Fivetran connects to PostgreSQL and extracts data from the source tables.
2. **Load:** Replicated data is automatically loaded into Snowflake, preserving the source data structure.
3. **Transform:** dbt models execute SQL transformations within the Fivetran platform, creating structured and analytics-ready datasets in Snowflake.

## dbt Features

The project incorporates dbt capabilities such as:

- Modular SQL models.
- Model dependencies and materializations.
- Data testing and quality checks.
- Reusable macros.
- Model selection using tags.
- Automated transformation scheduling.

## Automation & Scheduling

Fivetran is configured to orchestrate data transformations based on ingestion events and scheduled execution.

The project includes:

- Daily transformations triggered after successful data synchronization.
- Weekly transformations executed through scheduled jobs.
- Selective model execution using dbt tags.

## Project Goals

- Build an end-to-end automated ELT pipeline.
- Integrate PostgreSQL with Snowflake using Fivetran.
- Implement SQL transformations using dbt.
- Automate data ingestion and transformation workflows.
- Apply data modeling and data quality best practices.
- Develop practical experience with modern cloud data engineering tools.
