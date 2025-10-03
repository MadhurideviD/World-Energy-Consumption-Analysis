🌍 **World Energy Consumption Analysis (2000–2022)**

**Overview**

This project analyzes global energy consumption trends using data from 2000 to 2022. The goal is to provide actionable insights for policymakers, governments, and energy analysts on energy use, renewable adoption, efficiency, and regional inequalities.

**🚀 Objectives**

1. Identify top energy consumers overall and per capita.

2. Track fossil vs renewable energy share over time.

3. Compare renewable adoption leaders vs laggards.

4. Explore regional differences in per-capita energy use.

5. Analyze changes in renewable share between 2000–2022.

6. Assess countries’ vulnerability to fossil fuel price shocks.

7. Measure energy efficiency (energy consumption per GDP).
   
**📊 Dataset**

* Source: World Energy Consumption Dataset on Kaggle

* Years: 2000–2022

* Countries: ~180

* Continents: 6 (Africa, Asia, Europe, North America, South America, Oceania)

* Key Features: Total energy consumption, per-capita consumption, fossil & renewable share, renewable change, energy per GDP, etc.

**Data Cleaning & Processing:**

* Removed missing and irrelevant values

* Created a continent column

* Calculated per-capita metrics and renewable changes

* Filtered for years 2000–2022 for consistent analysis

**🛠 Tools & Technologies**

* Python (pandas, matplotlib, seaborn) – Data cleaning, EDA

* SQL / Snowflake – Aggregations and queries

* Tableau – Data visualization and interactive dashboards

* Canva / PowerPoint – Presentation slides

**📈 Key Insights**

1. Global Trends: Energy consumption doubled; fossil fuels still dominate; renewables increasing after 2010.

2. Top Consumers: China, USA lead in total energy; North America highest per capita.

3. Renewable Adoption: Europe and Brazil are leaders; Middle East and fossil-heavy Asia lag.

4. Regional Differences: Asia & Europe have high per-capita consumption; South America the lowest.

5. Renewable Change (2000–2022): Brazil, Denmark, Sweden saw the largest increases.

6. Fossil Fuel Vulnerability: Countries with high fossil share & high per-capita use are most at risk.

7. Energy Efficiency: Developed countries more efficient per GDP unit.

**📊 Dashboards**

* Interactive Tableau Dashboard allows filtering by country, continent, year.

* Enables policymakers to explore leaders, laggards, vulnerabilities, and efficiency metrics.

**🎯 Recommendations**

* Accelerate renewable adoption in lagging countries.

* Improve energy efficiency, especially in fossil-heavy economies.

* Invest in infrastructure to reduce regional inequalities.

* Monitor energy trends to support data-driven policy decisions.

**📂 Project Structure**
global-energy-analysis/
│
├─ data/
│   ├─ raw_energy_data.csv
│   └─ cleaned_energy_data.csv
│
├─ notebooks/
│   ├─ data_cleaning.ipynb
│   └─ eda_visualizations.ipynb
│
├─ dashboards/
│   └─ energy_dashboard.twbx
│
├─ slides/
│   └─ energy_project_presentation.pptx
│
└─ README.md

**📌 How to Run / Explore**

Open Tableau workbook to explore interactive dashboards.

Run Python notebooks to reproduce data cleaning and visualizations.

SQL queries are available in notebooks or Snowflake to aggregate metrics.

**👩‍💻 Author**

MADHURIDEVI DHARMARAJ

