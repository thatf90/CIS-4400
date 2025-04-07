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

[Open diagram in diagrams.net](https://app.diagrams.net/?url=https://raw.githubusercontent.com/thatf90/CIS-4400/main/data_arch.drawio)

The web based dashboard will allow users to interact with the data that was sourced from the CSV. The user can views insights from the data warehouse where everything is stored and filter out what they want to see or use. When the user does this the query engine processes this and displays the wanted information.

Data Architecture:

[Open data_arch.drawio in draw.io](https://viewer.diagrams.net/?url=https://raw.githubusercontent.com/thatf90/CIS-4400/main/data.arch.drawio)


The source of the data is the CSV from the NYC open data source. The data then goes through the data pipeline where it gets extracted, transformed, and loaded. The data then gets stored in the data warehouse. After that process is done, it gets visualized and reported for the user to make business intelligence decisions. 


Dimensional Modeling: 
![Dimension modeling](https://github.com/thatf90/CIS-4400/issues/2)

