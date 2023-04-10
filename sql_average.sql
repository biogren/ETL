CREATE TABLE daily_averages AS
SELECT DATE(Date_Time) AS date, AVG(SO2) AS avg_SO2, AVG(NO2) AS avg_NO2, AVG(CO) AS avg_CO, AVG(O3) AS avg_O3, AVG(PM10) AS avg_PM10, AVG(PM2_5) AS avg_PM2_5, AVG(TEMP) AS avg_TEMP, AVG(WD10) AS avg_WD10, AVG(WS10) AS avg_WS10
FROM air_2022_csv
GROUP BY DATE(Date_Time);

CREATE TABLE monthly_averages AS
SELECT strftime('%Y', Date_Time) AS year, strftime('%m', Date_Time) AS month, AVG(SO2) AS avg_SO2, AVG(NO2) AS avg_NO2, AVG(CO) AS avg_CO, AVG(O3) AS avg_O3, AVG(PM10) AS avg_PM10, AVG(PM2_5) AS avg_PM2_5, AVG(TEMP) AS avg_TEMP, AVG(WD10) AS avg_WD10, AVG(WS10) AS avg_WS10
FROM air_2022_csv
GROUP BY strftime('%Y', Date_Time), strftime('%m', Date_Time);

CREATE TABLE hourly_averages AS
SELECT Date_Time, AVG(SO2) AS avg_SO2, AVG(NO2) AS avg_NO2, AVG(CO) AS avg_CO, AVG(O3) AS avg_O3, AVG(PM10) AS avg_PM10, AVG(PM2_5) AS avg_PM2_5, AVG(TEMP) AS avg_TEMP, AVG(WD10) AS avg_WD10, AVG(WS10) AS avg_WS10
FROM air_2022_csv
GROUP BY strftime('%Y-%m-%d %H', Date_Time);