#Población
install.packages("demography")
install.packages("forecast")
library(demography)
library(forecast)
# Crear datos de ejemplo
>years <- 2000:2020
>population <- c(1000, 1050, 1100, 1150, 1200, 1250, 1300, 1350, 1400, 1450, 1500, 1550, 1600, 1650, 1700, 1750, 1800, 1850, 1900, 1950, 2000)
>data <- data.frame(years, population)
# Ajustar un modelo ARIMA
fit <- auto.arima(data$population)
# Proyectar los próximos 10 años
forecasted <- forecast(fit, h=10)
plot(forecasted)
#Invalidez y vejez
install.packages("demography")
install.packages("forecast")
install.packages("dynamac")
library(demography)
library(forecast)
library(dynamac)
# Crear datos de ejemplo
years <- 2000:2020
invalidity <- c(100, 105, 110, 115, 120, 125, 130, 135, 140, 145, 150, 155, 160, 165, 170, 175, 180, 185, 190, 195, 200)
old_age <- c(500, 520, 540, 560, 580, 600, 620, 640, 660, 680, 700, 720, 740, 760, 780, 800, 820, 840, 860, 880, 900)
data <- data.frame(years, invalidity, old_age)
# Ajustar un modelo ARIMA para invalidez
fit_invalidity <- auto.arima(data$invalidity)
# Ajustar un modelo ARIMA para vejez
fit_old_age <- auto.arima(data$old_age)
# Proyectar los próximos 10 años para invalidez
forecasted_invalidity <- forecast(fit_invalidity, h=10)
plot(forecasted_invalidity)
# Proyectar los próximos 10 años para vejez
forecasted_old_age <- forecast(fit_old_age, h=10)
plot(forecasted_old_age)
