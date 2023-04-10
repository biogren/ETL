### Data

#### Metadata about air gaulity

Data is downloaded from http://airviro.klab.ee/

The data contains information about different parameters describing air quality in Tartu. The measurements are made hourly basis and data is saved and kept downloadable for further analysis.

Table1: Parameters and their characteristica describing air quality in Tartu

| Attr  | example value | unit    | Description                 |
| ----- | ------------- | ------- | --------------------------- |
| SO2   | 0,23          | µg/m³ | Vääveldioksiid            |
| NO2   | 0,02          | µg/m³ | Lämmastikdioksiid          |
| CO    | 0,24          | mg/m³  | Süsinikoksiid              |
| O3    | 70,05         | µg/m³ | Osoon                       |
| PM10  | 8,55          | µg/m³ | Peened osakesed             |
| PM2.5 | 4,72          | µg/m³ | Eriti peened osakesed       |
| TEMP  | 9,72          | C       | Temperatuur                 |
| WD10  | 204,40        | deg     | Tuule suund 10 m kõrgusel  |
| WS10  | 1,56          | m/s     | Tuule kiirus 10 m kõrgusel |


#### How to use the data

If you want to use the CVS data format for calculations:

* Use python script to extact data from http://airviro.klab.ee/ (`fetch_air.ipynb`) and gather data into cvs file
* Use python script to calculate monthly, hourly and daily average values and generate new csv files (`Daily_monthly_calc.ipynb`)
* OpenRefine can be used to transform the daily, hourly and montly data to sql

If you want to use sql for calculations:

* Use python script to extact data from http://airviro.klab.ee/ (`fetch_air.ipynb`) and gather data into cvs file
* Use Openrefine to transform columns into correct format (use `data_tranform.json`)  
* Use OpenRefine to export data into SQL file (prepare a file `air-2022-csv.sql`)
* Open file `air-2022-csv.sql` in DB client 
* Use SQL script to calculate monthly, hourly and daily average values and generate new DB tables (`sql_average.sql`)
