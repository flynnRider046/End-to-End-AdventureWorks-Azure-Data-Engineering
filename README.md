# AdventureWorks-Azure-Data-Engineering

## Introduction
This project performs the end-to-end Data Engineering implementation for the <strong>AdventureWorks</strong> data using Microsoft Azure services. This project helps to understand the data ingestion from github, storing the data, transforming, performing analysis and visualization of the AdventureWorks data.

## Project Overview
This project uses the AdventureWorks dataset, fetched directly from Github. With this data we process, transform and deliver data for Business Intelligence (BI) purpose, using the resources like Azure Data Factory, Azure Databricks, Azure Synapse Analytics, and Power BI.

## Architecture Diagram
![Architecture Diagram](https://github.com/flynnRider046/End-to-End-AdventureWorks-Azure-Data-Engineering/blob/main/Images/Architecture.png)
The data flows through the following steps:
1. <strong>Data Source</strong>: The source of the data is AdventureWorks data which is stored in Github.
2. <strong>Data Ingestion</strong>: Data from the Github is ingested to Azure Data Factory. In the Data Factory the data is prepared for processing.
3. <strong>Raw Data Storage</strong>: The ingested raw data is stored in Azure Data Lake Gen2.
4. <strong>Transformation</strong>: Azure Databricks is used for data transformation. Various operations are performed to process the raw data.
5. <strong>Serving</strong>: Azure Synapse Analytics is used for generating insights from the transformed data.
6. <strong>Reporting</strong>: The data visualizations are done with Power BI.

## Azure Servies Used
* Microsoft Azure
* Resource Groups
* Azure Data Factory
* Azure Data Lake Gen2
* Azure Databricks
* Microsoft Entra ID
* Azure Syanpse Analytcis
* Power BI

## Data Source
The project data is used from AdventureWorks data stored in Github.
The datasets involves multiple files with information about
* Calendar
* Customers
* Product Categories
* Product Subcategories
* Products
* Returns
* Sales 2015
* Sales 2016
* Sales 2017
* Territories

## Data Ingestion

## Storage Accounts

## Containers

## Resource Groups

## Data Ingestion

## Insights and Analytics

## Summary of Insights

## Contributors

## Credits

## References
[https://www.youtube.com/watch?v=0GTZ-12hYtU&t=915s]
