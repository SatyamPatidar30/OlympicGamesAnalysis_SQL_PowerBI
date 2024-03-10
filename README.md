# OlympicGamesAnalysis_SQL_PowerBI

## Business Problem
The challenge for this data analyst project is outlined below. This has been used continuously to ensure that the right data has been selected, transformed and used in the data visualization which is meant to be passed on to the business users.

#### "As a data analyst working at a news company you are asked to visualize data that will help readers understand how countries have performed historically in the summer Olympic Games.

#### You also know that there is an interest in details about the competitors, so if you find anything interesting then don’t hesitate to bring that in also. 

#### The main task is still to show historical performance for different countries, with the possibility to select your own country."


## Data Collection & Table Structures
The necessary data was first put into a SQL database and afterwards transformed used the transformation that you can see below.
#### Olympic Games Views
![2024-03-10 (3)](https://github.com/SatyamPatidar30/OlympicGamesAnalysis_SQL_PowerBI/assets/151156440/dc54cecd-d23b-4aec-9b55-9f064101f4d5)

## Calculations
The following calculations were created in the Power BI reports using DAX(Data Analysis Expressions). To lessen the extent of code,the re-use of measures(measure branching) was emphasized:

Number of competitor:
####  # of Competitors = DISTINCTCOUNT('Olympic Games Analysis'[ID])
####  # of Medals = COUNTROWS('Olympic Games Analysis')

## Olympic Games Analysis
The finished dashboard consists of visualizations and filters that gives an easy option for the end used to navigate the summer games through history. Some posibilities are to filter by period using year, nation code to focus on one country or look into either competitor or specific sports over time.

![2024-03-10 (4)](https://github.com/SatyamPatidar30/OlympicGamesAnalysis_SQL_PowerBI/assets/151156440/43ae9b58-8e54-466e-82c5-0cc601ee0953)




