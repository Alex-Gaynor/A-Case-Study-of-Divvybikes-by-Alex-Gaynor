# Divvybikes: A Ridesharing Analysis Using BigQuery SQL and Google Sheets

![image](https://github.com/mad5PartA/A-Case-Study-of-Divvybikes-by-Alex-Gaynor/assets/159947321/364ea8f3-15bb-400f-91a3-b633e36256e1)

## Introduction
For this project, I have taken on the role of a data analyst working for Cyclistic, an imaginary, Chicago-based bike-sharing startup that uses real data, courtesy of Divvybikes, a division of the popular ridesharing company Lyft.

Cyclistic launched in 2016 and currently features 5,824 bicycles of different types and 692 stations around Chicago.  A bike can be rented and checked out at a station, then checked back in at another station.

Cyclistic offers two main types of user account for their bikes: annual, who purchase memberships for a whole year and casual, who purchase single ride or day passes.  The director of marketing believes that the company's future can be greatly enhanced by increasing the number of annual riders, who are a more lucrative clientele than casual riders.  To this end, I was tasked with analyzing the ride data and discerning insights as to how the two user types used Cyclistic bikes differently from each other.  From this, the marketing team would be able to devise the best possible strategy to convert casual riders into annual members and attract more members overall.

## Business Questions
1. In what ways do members and casuals use bikes differently?
2. When does each member type prefer to ride and for how long?
3. How can we go about encouraging casual riders to buy annual memberships?

## Stakeholders 
The primary stakeholders in this project are the director of analytics at Cyclistic as well as the marketing analytics team.

The secondary stakeholders in this project are Cyclistic's executive team, who make the decisions whether or not to approve the course of action recommended by the analytics team.

## Data Used
The data used was from December 2022 through November 2023.  It was downloaded from [the divvy-tripdata index bucket](https://divvy-tripdata.s3.amazonaws.com/index.html).

The data is stored as zipped CSV files that typically go by month, though earlier (pre-April 2020) data goes by quarters.

The credibility and integrity of the data can be considered well attested to, as it was specifically cited for use in the Google Data Analytics Certificate Capstone course, which is offered by Google, a company that is the most widely used and trusted source of information for countless important endeavors.  The data itself was sourced from Lyft Bikes & Scooters LLC, which operates Divvybikes under the auspices of Lyft, a very well-known ridesharing company.  

This data is public, and as such has no personally identifiable attributes.  The full details can be found within [the data license agreement](https://divvybikes.com/data-license-agreement).

## Data Processing Steps
1. After downloading the raw data, I uploaded it to a **BigQuery** project to form SQL tables.
2. I used SQL queries to inspect the data for misspelling, NULL values and other invalid entries.
3. I noticed there were quite a few entries where values were NULL, most notably station names and IDs.
4. I constructed a query to pull the rows that were both distinct and not null to create cleaned tables for each month that included new columns for **trip duration** in minutes and **weekday** in numbers from 1 (Sunday) to 7 (Saturday).
5. I also took into account reasonable ride lengths, so I made sure to only query rows with ride durations greater than 0 minutes and less than 5,000 minutes.
6. With the above constraints, I queried data to find the insights.
7. With data in a much more manageable format, I was able to easily download my insights and import them into **Google Sheets** to generate informative visualizations.

## Data Insights
### How many of each user type ride each month?
![image](https://github.com/mad5PartA/A-Case-Study-of-Divvybikes-by-Alex-Gaynor/assets/159947321/97985ca9-7545-4700-bf66-392b94147320)

1. Going by who rode each month, very few casuals rode during the winter months.
2. Casual ride numbers don't start picking up until Spring; from there, they go up, peaking around July-Aug, and gradually decrease from there.

### Which days of the week are most popular for each user type?
![image](https://github.com/mad5PartA/A-Case-Study-of-Divvybikes-by-Alex-Gaynor/assets/159947321/6bcf7a1a-477c-467a-abdc-1e517e7543d8)

![image](https://github.com/mad5PartA/A-Case-Study-of-Divvybikes-by-Alex-Gaynor/assets/159947321/2522b402-168f-4a15-b4f0-a0fbc7f0f88a)

1. Looking at the days of the week each month that have the most rides, it can be seen that members most commonly ride on Tuesday and Thursday.
2. Casuals on the other hand, _overwhelmingly_ prefer to ride on weekends, with their peak days being Saturday or Sunday for 75% of the months in the year.

### Which hours of the day are most popular for each user?
![image](https://github.com/mad5PartA/A-Case-Study-of-Divvybikes-by-Alex-Gaynor/assets/159947321/177c8089-8c01-4d11-9b53-7ce024845087)

1. As a representative example, I chose August, the month with the largest numbers of rides.
2. The hourly patterns are similar enough for both members and casuals, with the most rides for both being between 5pm and 6pm.
3. However, there are some differences; Members have a smaller peak earlier in the morning, and less activity in early afternoon.
4. Meanwhile, Casual rides start more in the late morning, have more activity in the afternoon, and increase steadily from there up to their 5pm peak, then decrease after c. 7pm.

### What are the average and maximum ride times for each user?
![image](https://github.com/mad5PartA/A-Case-Study-of-Divvybikes-by-Alex-Gaynor/assets/159947321/55679642-ccb7-4c94-a19a-75937dfe88d8)
![image](https://github.com/mad5PartA/A-Case-Study-of-Divvybikes-by-Alex-Gaynor/assets/159947321/53cad738-b9d4-4c37-82fb-79d3651f66bc)

1. With respect to average ride duration, members tend to have shorter trips than casuals.
2. With respect to maximum time, casuals have longer max times every month.
3. Members are pretty uniform in their trip durations throughout the year, while casuals have much more variation.

## Conclusions
1. Given that casuals prefer riding on weekeds during more temperate months in late morning and afternoon more than members, this indicates that they ride more for leisure.
2. Members tend to take shorter trips at the start and end of the typical workday.  This indicates that their trips are more focused toward a purpose, mostly work-related.
3. Casuals take longer trips on average, with more variation.  They may also include more students given that they ride more in afternoon.  This is especially a factor in August, which is the peak month used as an example.

## Recommended Actions
Going forward, I recommend to Cyclistic's analytics and executive teams the following courses of action that are most likely to lead to success in our goal to gain more annual members:
1. Design our Marketing campaign with a view toward emphasizing how becoming an annual member will further a casual's desire to enjoy their leisure.
2. Run marketing and advertising campaigns during peak months for casuals offering specials, especially in weekends and during summer.
3. Offer credits, discounts and other perks based on minutes ridden and conversion of status from casual to annual member.

These are the top recommendations that I can make based on the data that is available.  For the future, more in-depth analyses can be considered such as targeting specific locations and adapting to trends during specific months.  We can also use analytics of different marketing segments to more accurately focus our advertising in a tailor-made way that is most likely to resonate with the rider.  We could also work on addressing potential system glitches that could be invalidating data entries; by this we can ensure we get more usable data.

