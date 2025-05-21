# CIS-4400
Cis 4400 
Business requirements: Evaluate, analyze, and monitor the quality of air in New York City. The metrics used to track the key performance will be set at a reasonable threshold, track the level each borough pollutes at, and see how often the threshold gets crossed and by how much or little. The tracking system is vital as it can help create detailed insights and potentially track down the who, what, where, when, and why.

Functional requirements: The system should let users check air quality trends by filtering data by pollutant type, location, and time range, for both exploration and reporting. Users can set custom pollution thresholds, and create summaries for stakeholders. The platform supports descriptive and diagnostic analytics through interactive dashboards tailored to user roles. User should use dashboard to increase clarity to follow for self and guide others.

Data Sourcing: 
Direct dataset download link: https://data.cityofnewyork.us/api/views/c3uy-2p5r/rows.csv?accessType=DOWNLOAD
Downloaded CSV via public open data portal
Link to data dictionary: https://data.cityofnewyork.us/Environment/Air-Quality/c3uy-2p5r/about_data
The dataset is about New York City’s surveillance on its air quality and pollution. This data set is appropriate because it meets the data requirement asked for. 

Information Architecture:

[View Information Architecture Diagram](./info%20arch.drawio.png)

The web based dashboard will allow users to interact with the data that was sourced from the CSV. The user can views insights from the data warehouse where everything is stored and filter out what they want to see or use. When the user does this the query engine processes this and displays the wanted information.

Data Architecture:

[View Data Architecture Diagram](./data%20arch.drawio.png)


The source of the data is the CSV from the NYC open data source. The data then goes through the data pipeline where it gets extracted, transformed, and loaded. The data then gets stored in the data warehouse. After that process is done, it gets visualized and reported for the user to make business intelligence decisions. 


Dimensional Modeling: 
![Dimension modeling](https://github.com/thatf90/CIS-4400/issues/2)

Data Storage: The raw dataset (Air_Quality.csv) was uploaded to Azure Blob Storage directly in a container named airqualitycontainer. This storage approach was chosen to simulate real-world cloud-based environments and ensure organized, secure storage of the source file. The file was structured in an orderly manner and made available for processing in the transformation stage.

Data Transformation:
Using Python and the Pandas library, the dataset was cleaned and pre-processed. The Start_Date column was converted to datetime format, and new fields (Year, Month, Day) were obtained. Rows with null values in critical fields (Start_Date, Data Value) were removed, and duplicate records were dropped. Additionally, the Message column was removed due to being entirely null.
The transformed dataset was saved as Air_Quality_Cleaned.csv

Data Dictionary Updates (Post-Transformation):
The original data dictionary from the NYC Open Data portal was retained. The following supplemental updates were made to reflect transformation changes:

Column Name	Data Type	Description
Year	Integer	Year extracted from Start_Date
Month	Integer	Month extracted from Start_Date
Day	Integer	Day extracted from Start_Date

Data Warehouse Modeling: This data warehouse design follows the dimensional model from Homework 1. It uses one central fact table, FactAirQualityReadings, and three dimension tables: DimDateTime, DimLocation, and DimPollutant. The schema is modeled as a star schema to support flexible analysis by time, location, and pollutant type.

Visualizations were created using Tableau Public, based on the transformed Air_Quality_Cleaned.csv dataset. The following visuals were developed to explore key insights:

Pie Chart – Pollution breakdown by borough

Column Chart – Total pollution by year

Line Chart – Pollution trends over time

Highlight Table (substitute for Heat Map) – Pollution levels across boroughs and months

Filter Tool – Users can filter by year to adjust all charts dynamically

These visuals were combined into a single interactive dashboard for presentation that are accesible through either of the links provided below:

https://public.tableau.com/views/Air_Quality_Cleaned_Viz/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

![Dashboard image 1 out of 2](https://github.com/thatf90/CIS-4400/issues/3)

![Dashboard image 2 out of 2](https://github.com/thatf90/CIS-4400/issues/4)


Conclusion: When analyzing NYC’s air quality data, one thing became clear: pollution and its effects aren’t equally shared. The neighborhood of Hunts Point - Mott Haven showed the highest average pollution levels, likely due to industrial activity and dense traffic. Even more striking, the highest health-related measurement was asthma emergency visits linked to ozone exposure, averaging over 71 cases. This shows how pollution isn’t just an environmental stat — it translates into real health consequences, especially in vulnerable communities.
