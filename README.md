# time-series-hk-temperature

##Background

Weather data is one of the most common time series data. In order to interpret and forecast weather in Hong Kong, the Hong Kong Observatory (HKO) has been recording various meteorological data since 1883. Raw data, however, is not fully accessible by the public. Since only the latest data will be provided from official website, in this project, data originally disturbed by HKO will be collected from The Journalism and Media Studies Centre (JMSC), the University of Hong Kong, under project of Hong Kong Open Government Data. Source data are available from http://data.jmsc.hku.hk/hongkong/observatory/.

##Objective

I will fit a most suitable model from raw data and predict the trend of average temperature data (measured in Celsius) monthly from January 1997 to March 2015 (size=219). To verify the performance of selected model, raw data will be separated into training data of 17 years (size=207) for model building, and testing data of one year (size=12) for validation.

