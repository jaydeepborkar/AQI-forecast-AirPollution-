library(prophet)


df <- read.csv("C:\\Users\\Jaydeep Borkar\\Desktop\\AQIMu.txt")
m <- prophet(df)
future <- make_future_dataframe(m, periods = 1)
tail(future)


forecast <- predict(m, future)
tail(forecast[c('ds', 'yhat','yhat_lower', 'yhat_upper')])


plot(m, forecast)

prophet_plot_components(m, forecast) 



