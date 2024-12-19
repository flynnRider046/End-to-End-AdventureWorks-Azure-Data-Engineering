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
The [dataset](https://github.com/flynnRider046/End-to-End-AdventureWorks-Azure-Data-Engineering/tree/a058bc413e0cc9602f10a1a479cfa64a83bb9e2d/Data)
 involves multiple files with information about
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

## Resource Groups
Resource Groups in Azure are logical containers used to manage and organize project related Azure resources. They support lifecycle management by enabling easy deletion of associated resources. Additionally, resource groups help track costs and usage across services. The first step here is to setup Resource groups. Following image shows the resource groups implementation

![Resource Groups](https://github.com/flynnRider046/End-to-End-AdventureWorks-Azure-Data-Engineering/blob/a058bc413e0cc9602f10a1a479cfa64a83bb9e2d/Images/Azure%20Resource%20Groups.png)

## Data Ingestion
We have used Azure Data Factory for data orchestration and automation. Data Factory oulls the data from GitHub using an HTTP connector and stores it in the bronze container in Azure Storage. Parameters are added to the pipeline for adaptability to changes in the data source.

![Data Ingestion](https://github.com/flynnRider046/End-to-End-AdventureWorks-Azure-Data-Engineering/blob/8d25039d42ae8e607834211b99b994b4ae8576c3/Images/Data%20Factory.png)

## Storage Accounts
![StorageLake](https://github.com/flynnRider046/End-to-End-AdventureWorks-Azure-Data-Engineering/blob/a058bc413e0cc9602f10a1a479cfa64a83bb9e2d/Images/Azure%20Storage%20DataLake.png)

## Containers
In Azure Data Engineering, the Bronze, Silveer and Gold layers represent a data architecture pattern used in Data Lakes and Lakehouses for organiing and processing data. 
The Bronze layer is the raw data storage layer where data from various sources is ingested in its original format regardless of structure. The data is immutable and is used for data reprocessing.

![BronzeLayer](https://github.com/flynnRider046/End-to-End-AdventureWorks-Azure-Data-Engineering/blob/a058bc413e0cc9602f10a1a479cfa64a83bb9e2d/Images/Bronze%20Layer.png)

The Silver layer contains cleaned and transformed data from the Bronze layer, the data transformation is performed through Azure Databricks where the process like data standardization and basic transformations takes place making it suitable for intermediate analytics and operational reporting.

![SilverLayer](https://github.com/flynnRider046/End-to-End-AdventureWorks-Azure-Data-Engineering/blob/a058bc413e0cc9602f10a1a479cfa64a83bb9e2d/Images/Silver%20Layer.png)

The gold layer contains curated, fully processed adventure data that is ready for advanced analytics. The data in this layer is aggregated, summarized, and enriched to support decision-making processes.

![GoldLayer](https://github.com/flynnRider046/End-to-End-AdventureWorks-Azure-Data-Engineering/blob/a058bc413e0cc9602f10a1a479cfa64a83bb9e2d/Images/Gold%20Layer.png)

This layered approach ensures data quality, scalability, and easier data management while enabling robust analytics using Azure services like Azure data Lake Storage, Azure Synapse Analytics, Azure Data Fctory and Azure Databricks.

## Data Transformation
Azure Databricks is used to convert raw data in bronze container to a structured format. For this we have made sure a cluster for databricks is created for data efficiency. This databricks is connected to the data in the silver layer and is transformed for further analysis. Please find the attached [ipynb](https://github.com/flynnRider046/End-to-End-AdventureWorks-Azure-Data-Engineering/blob/f807272465cbc7b0419b50797a6194344d6dedbd/aproject%20silver%20layer.ipynb) file which performs the transformation on the data present in silver layer.


## Insights and Analytics
The final step here was integrating the data with Power BI tool to visualize and generate insights. Here are the reports to present actionable insights to stakeholders.
![Insights1](https://github.com/flynnRider046/End-to-End-AdventureWorks-Azure-Data-Engineering/blob/a058bc413e0cc9602f10a1a479cfa64a83bb9e2d/Images/Power%20BI.png)
![Insights2](https://github.com/flynnRider046/End-to-End-AdventureWorks-Azure-Data-Engineering/blob/a058bc413e0cc9602f10a1a479cfa64a83bb9e2d/Images/Power%20BI%202.png)

## Summary of Insights

## Contributors
<strong>Rohith Damgeti</strong>

## Credits
<strong>Ansh Lamba</strong>

## References
[https://www.youtube.com/watch?v=0GTZ-12hYtU&t=915s]
