# EV_Analysis
This project analyzes the distribution of alternative fuel vehicles across U.S. states to identify adoption patterns, regional differences, and indicators of future EV growth. The analysis focuses on Electric Vehicles (EV), Plug In Hybrid Electric Vehicles (PHEV), Hybrid Electric Vehicles (HEV), and other alternative fuels. The goal is to understand where EV infrastructure investment would have the greatest impact and to support data driven recommendations for policymakers and planners.

The project includes SQL based data preparation and a Tableau story that visualizes key findings.

Dataset
The dataset contains state level counts of vehicles by fuel type, including:

Electric EV, Plug In Hybrid Electric PHEV, Hybrid Electric HEV, Biodiesel,Ethanol Flex E85, etc.
Unknown Fuel

All calculations and visualizations are based on these values.

SQL Analysis
The SQL script in this repository performs the following tasks:

1. Data exploration
Initial review of the dataset to confirm structure and completeness.

2. Percentage calculations
For each state, the script calculates the percentage of vehicles that fall into each fuel category.
Example from the script:

"SELECT State, (Electric_EV * 1.0) / (Electric_EV + Plug_In_Hybrid_Electric_PHEV + Hybrid_Electric_HEV + Biodiesel + Ethanol_Flex_E85 + Compressed_Natural_Gas_CNG + Propane + Hydrogen + Methanol + Gasoline + Diesel + Unknown_Fuel) * 100 AS ElectricEV_Percentage"

3. Ranking queries
Identifies states with the highest and lowest EV adoption.

4. Aggregations
Calculates total counts of each fuel type nationwide.

5. National EV percentage
Computes the overall percentage of EVs in the United States.

6. Comparative analysis
Includes targeted comparisons such as California vs Texas, Florida, and New York.

7. Alternative fuel usage
Calculates the percentage of all alternative fuel vehicles by state.

The SQL file is structured, readable, and organized into clear sections for ease of review.

Tableau Visualization
The Tableau story presents the analysis through the following visuals:

Alternative Fuel Market Share  
A pie chart showing the distribution of fuel types nationwide.

EV Adoption by State  
A filled map and bar chart showing EV percentages across states.

Hybrid Adoption by State  
A filled map and bar chart showing HEV percentages across states.

EV Percent vs Hybrid Percent Scatterplot  
A scatterplot that highlights states with high hybrid adoption but low EV adoption.

Recommendations Slide  
A text based summary identifying priority states for EV infrastructure investment.

View the full Tableau story here:
https://public.tableau.com/app/profile/arlene.santiago4702/viz/UnitedStatesElectricVehicleAdoptionandAlternativeFuelTrends/Story1

Key Insights
EV adoption is highest on the West Coast and lowest in the Midwest and South.

Hybrid adoption is a strong indicator of future EV growth.

States such as Minnesota, Pennsylvania, and North Carolina show moderate EV adoption and high hybrid adoption, which signals strong readiness for electrification.

Gasoline remains dominant, but EV and hybrid adoption are increasing.

Ethanol, HEV, and EV represent the strongest alternative fuel categories nationwide.

Recommendations
Based on the analysis, the following states should be prioritized for EV infrastructure investment:

Pennsylvania
Low EV adoption but strong hybrid presence and a large population.

Minnesota
High hybrid adoption and moderate EV adoption, indicating strong readiness.

North Carolina
Growing population, moderate EV adoption, and strong hybrid presence.

These states show clear potential for accelerated EV growth once infrastructure expands.

Repository Contents
SQL Script: Full analysis and calculations used to prepare the dataset.

README: Project overview, methodology, insights, and recommendations.

Tableau Link: Interactive data story presenting the results.
