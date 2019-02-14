library(prophet)
 

df <- read.csv("C:\\Users\\Jaydeep Borkar\\Desktop\\AQI.csv")
m <- prophet(df)
future <- make_future_dataframe(m, periods = 98)
tail(future)
 
 
forecast <- predict(m, future)
tail(forecast[c('ds', 'yhat','yhat_lower', 'yhat_upper')])


write.table(forecast, "C:\\Users\\Jaydeep Borkar\\Desktop\\AQI2.txt", sep="\t\t", row.names = TRUE, col.names = NA)

plot(m, forecast)

prophet_plot_components(m, forecast) 



