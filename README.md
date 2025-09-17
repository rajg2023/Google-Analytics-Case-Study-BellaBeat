# Bellabeat Smart Device Data Analysis Case Study

## Introduction
Bellabeat is a pioneering femtech company founded in 2014 by Urška Sršen and Sandro Mur. The company offers beautifully designed smart wellness products—like the Leaf tracker, Ivy wearable, Spring water bottle, and the Bellabeat app—focused on empowering women with actionable health insights.

## Stakeholders
Key stakeholders in this project include:

- **Urška Sršen** - Co-founder of Bellabeat, guiding the overall business strategy.
- **Sandro Mur** - Co-founder of Bellabeat, involved in product development.
- **Marketing Analytics Team** - Responsible for analyzing user data and providing insights for marketing.
- **Potential Female Customers** - End-users of Bellabeat products, especially interested in wellness data insights.

These stakeholders were crucial for understanding both the business needs and user-centered insights during the analysis.

## Business Task / Problem Statement (Ask Phase)
**Task**: Identify major trends in smart device usage and propose strategies to enhance engagement for Bellabeat’s products.

**Stakeholders**: Bellabeat executive team, marketing analytics team, and potential female customers.

### Guiding Questions:
- What patterns or insights are present in smart device data?
- How do these relate to target Bellabeat customers?
- How can data-driven insights guide marketing?

## Data Sources (Prepare Phase) -[FitBit Fitness Tracker Data](https://www.kaggle.com/datasets/arashnic/fitbit/data?select=mturkfitbit_export_4.12.16-5.12.16)
**Primary Source**: Fitbit Fitness Tracker dataset (public domain), including minute-level activity, sleep, and heart rate data from 30 users.

- The data was stored in CSV files and imported using BigQuery, SQL and R Studio for analysis.
- Data bias and credibility were reviewed, with consideration of sample size and public source limitations.


## Data Cleaning & Preparation (Process Phase)
- Errors and missing values were identified and cleaned using BigQuery, SQL filtering, spreadsheet inspection, and R scripts for outlier removal.
- Date fields were unified, and datasets were merged where appropriate.
- Data was aggregated from minute-level to daily summaries using SQL `GROUP BY` and R’s `dplyr` for analysis readiness.
- All cleaning steps were documented to ensure reproducibility.
  <img width="480" height="270" alt="image" src="https://github.com/user-attachments/assets/2dc4fdf9-2137-4f8b-8241-160be0d8ddb9" />

## Analysis (Analyze Phase)
- Explored patterns in daily steps, active minutes, sedentary time, and sleep hours.
- Correlated activity intensity with sleep quality, showing that users with more active minutes tended to sleep longer and better.
- Noted dips in weekly activity on weekends and identified key time frames when users were most engaged.
- Used **BigQuery** for aggregation and joins, and **R** scripts for exploratory visualizations (boxplots, line charts).
- <img width="480" height="270" alt="image" src="https://github.com/user-attachments/assets/0ef145c4-21b2-4b8d-8f7c-894c52a8453d" />
  <img width="480" height="270" alt="image" src="https://github.com/user-attachments/assets/1537e048-6b0f-43c5-bf4f-a267e9d2fe25" />


## Findings & Visualizations (Share Phase)
Key findings were presented using the following visualizations:
- **Time series line charts** to show activity trends over time.
- **Bar charts** to compare different activity types.
- **Scatter plots** to demonstrate correlations between activity and sleep.
**Tools Used**:
- R (`ggplot2`), Google Sheets, and Tableau for visualization.
-<img width="480" height="270" alt="image" src="https://github.com/user-attachments/assets/aa0d7856-7f06-414f-9b01-e6bfbbf36b5f" />
  <img width="480" height="270" alt="image" src="https://github.com/user-attachments/assets/1f1c3d4e-5f30-4bfc-9679-206e62d0a23b" />
  
The insights were summarized and presented to the executive team with actionable patterns and clear data storytelling.

## Recommendations (Act Phase)
- Target marketing campaigns to encourage consistent weekly activity, with a focus on boosting engagement over weekends.
- Communicate the positive link between an active lifestyle and better sleep to users.
- Personalize app features and marketing messages based on user behavior and biometric data.
- Expand data collection for more personalized strategies.

## Conclusion & Next Steps
Analyzing smart device usage provides Bellabeat with evidence-based insights to improve product marketing, campaign timing, and customer retention.

### Next Steps:
- Implement targeted, data-backed campaigns.
- Enhance wellness app personalization based on user data.
- Continue regular data analysis and incorporate new information to fine-tune strategies.
---
## Project Files
The repository contains the following files:
- R Scripts for data analysis and visualization.
- CSV files with the raw data used in the analysis.
- PowerPoint slides summarizing key findings and recommendations.
- README file with project details.
---
### License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
