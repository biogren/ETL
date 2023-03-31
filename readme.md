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

I have decided to use the CVS data format for calculations

* Use python script to extact data from http://airviro.klab.ee/ (`fetch_air.ipynb`) and gather data into cvs file
* Use Openrefine to transform columns into correct format (use `data_tranform.json`) - check for missing values and transform data. (If data is processed using phyton, can be skipped with the next step since formatting will be lost)
* Use OpenRefine to export data into CVS file (can be skipped if phyton will be used)
* Use python script to calculate monthly and daily average values and generate new csv files (`Daily_monthly_calc.ipynb`)
* OpenRefine can be used to transform the daily and montly data to sql