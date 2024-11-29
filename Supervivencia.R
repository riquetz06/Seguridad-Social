#Análisis de supervivencia
# Instalar y cargar el paquete survival
install.packages("survival")
library(survival)
# Crear datos simulados de supervivencia
set.seed(42)
tiempos <- rexp(100, rate = 0.1)  # Tiempos hasta el evento
sobrevivencia <- sample(c(0, 1), 100, replace = TRUE)  # Estado de sobrevivencia (0=vivo, 1=muerto)
datos <- data.frame(tiempos = tiempos, sobrevivencia= sobrevivencia)
# Ajustar un modelo de supervivencia
modelo <- survfit(Surv(tiempos, sobrevivencia) ~ 1)
summary(modelo)
# Graficar la curva de supervivencia
plot(modelo, main = "Curva de Supervivencia", xlab = "Tiempo", ylab = "Supervivencia")
