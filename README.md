# Project Proposal AE-24

### Domain of Interest - Crime

**Why are you interested in this field/domain?**

As world citizens, crime is a domain of information that we all care about and relate to. Knowing about the world situation is **advantageous** as we can be aware of certain **dangers** to avoid so we can live a _peaceful_ and _happy_ life.

Therefore, we are interested to know about crimes that are happening all over the world with various motives. Additionally, we would like to know how crime _types_ are distributed in different **locations**. It is important that we know about the kinds of crimes happening around the world so that we can think of potential **problems** that need the most attention and perhaps their **solutions**. 

**What other examples of data driven project have you found related to this domain (share at least 3)?**

### 1. National Human Trafficking Hotline
  - This hotline has one of the _largest_ data sets on **human trafficking** in America. They get their statistics from information taken from signals, phone calls, texts messages and chats, emails, and online tip reports. This kind of data is used to help victims, survivors, and the anti-trafficking field. (Source: https://humantraffickinghotline.org/states)
  
### 2. Crime Mapping and Statistics - Tukwila Police Department
  - The Tukwila police department collaborated with _LexisNexis_ to offer **crime mapping** and **statistics**. Crime mapping refers to showing crimes at their **locations** on a map. This provides citizens with a clear picture of their city/environment. LexisNexis is provided data of incidents reported to the Tukwila Police Department. (Source: https://www.tukwilawa.gov/crime-mapping-statistics/ )

### 3. Hate Crime Data - Office for Democratic Institutions and Human Rights (ODIHR)
  - Many countries have reported official hate crime data to the _ODIHR_. Fortunately, these countries have also passed legislation to address the **under-reporting** of hate crimes, to investigate, prevent, and prosecute hate crimes, and provide penalties for them. They have also committed to collecting and maintaining data on hate crimes as well as make them _public_. The ODIHR website contains hate crimes that have been reported to them by these nations. (Source: https://hatecrime.osce.org/index.php/hate-crime-data)

**What data-driven questions do you hope to answer about this domain (share at least 3)?**

1. What are the locations where crime is the most _prevalent_?
2. What are some typical **motives** of crimes?
3. What type of crime happens the **most**
4. Are there any locations where only _specific_ kinds of crimes happen the **most**?
5. What _time_ do crimes tend to happen the **most**?

### Finding Data

**Where did you download the data (e.g., a web URL)?**

1. Seattle Police Department Crime Data (2008-Present) - https://data.seattle.gov/Public-Safety/SPD-Crime-Data-2008-Present/tazs-3rd5
2. NYPD Shooting Incident Data - https://data.world/city-of-ny/5ucz-vwe8
3. Motives of reported cyber-crimes in India - https://data.world/drhimanshur/motives-of-reported-cyber-crimes-in-india-state-wise-2013
4. US Hate Crime Dataset (2010-2019) - https://www.kaggle.com/sumaiaparveenshupti/us-hate-crime-dataset-20102019-multiple-sources

**How was the data collected or generated? Make sure to explain who collected the data (not necessarily the same people that host the data), and who or what the data is about?**

1. The Seattle Police Department collected the data by relying on the _National Incident-based Reporting System_ (abbreviated as **NIBRS**). The NIBRS involves a lot of data being collected about an incident that is reported. For example, this data set includes the time, address, longitude & latitude coordinates, and offense for each incident reported.
2. The New York Police Department manually extracted data **every quarter** of the calendar year. Before being put on their website, their _Office of Management Analysis and Planning_ has to review it. This is data on every shooting incident in NYC that has occurred in that _current_ year. For example, each record includes information on the time and location of the occurrence, as well as suspect and victim demographics.
3. Himanshu Rajput collected the data by looking at _reports_ of cyber-crimes in India. This data includes motives of these cyber-crimes such as **revenge** or **greed**.
4. The United States Department of Justice, FBI collected data that was submitted by law enforcement. This data is about **hate crimes** and consists of states, the _motivations_ for these hate crimes (race, sexual orientation, disability, gender, and gender identity).

**How many observations (rows) are in your data?**

1. Seattle Police Department Crime Data - 936,401 rows/observations
2. New York Police Department Shooting Incidents - 441 rows/observations
3. Cyber-Crimes in India - 38 rows/observations
4. Us Hate Crimes - Multiple datasets:
    - Austin Texas Hate Crimes 2020 - 35 rows/observations
    - New York Hate Crimes 2010-2019 - 605 rows/observations
    - Hate Crime Incidents - 2175 rows/observations

**How many features (columns) are in the data?**

1. Seattle Police Department Crime Data - 17 columns/features
2. New York Police Department Shooting Incidents - 19 columns/features
3. Cyber-Crimes in India - 12 columns/features
4. US Hate Crimes - Multiple datasets:
    - Austin Texas Hate Crimes 2020 - 13 columns/features
    - New York Hate Crimes 2010-2019 - 44 columns/features
    - Hate Crime Incidents - 14 columns/features

**What questions (from above) can be answered using the data in this dataset?**

Perhaps all questions can be answered using the datasets, but these seem the be the easiest:

1. What are the locations where crime is the most _prevalent_?
2. What are some typical **motives** of crimes?
3. What type of crime happens the **most**?