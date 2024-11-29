Probabilidades de transición (ejemplo)
# Crear una matriz de transición
transition_matrix <- matrix(c(0.7, 0.2, 0.1,
                              0.3, 0.4, 0.3,
                              0.2, 0.3, 0.5),
                            nrow = 3, byrow = TRUE)

# Dar nombres a las filas y columnas para mejor legibilidad
rownames(transition_matrix) <- colnames(transition_matrix) <- c("Estado1", "Estado2", "Estado3")

# Mostrar la matriz de transición
print(transition_matrix)

# Verificar si cada fila suma 1 (propiedad de probabilidad de transición)
rowSums(transition_matrix)

# Crear una matriz de transición
Warning message:
package ‘markovchain’ was built under R version 4.3.3 
transition_matrix <- matrix(c(0.7, 0.2, 0.1,
+                               0.3, 0.4, 0.3,
+                               0.2, 0.3, 0.5),
+                             nrow = 3, byrow = TRUE)
# Dar nombres a las filas y columnas para mejor legibilidad
rownames(transition_matrix) <- colnames(transition_matrix) <- c("Estado1", "Estado2", "Estado3")
# Mostrar la matriz de transición
# Mostrar la matriz de transición
print(transition_matrix)
        Estado1 Estado2 Estado3
Estado1     0.7     0.2     0.1
Estado2     0.3     0.4     0.3
Estado3     0.2     0.3     0.5
# Verificar si cada fila suma 1 (propiedad de probabilidad de transición)
rowSums(transition_matrix)
Estado1 Estado2 Estado3 
      1       1       1 
# Estado inicial (por ejemplo, empezando en Estado1)
initial_state <- c(1, 0, 0)
# Número de pasos en el futuro
steps <- 10
# Función para pronosticar estados futuros
forecast_markov <- function(initial_state, transition_matrix, steps) {
+     state <- initial_state
+     for (i in 1:steps) {
+         state <- state %*% transition_matrix
+     }
+     return(state)
+ }
# Realizar el pronóstico
future_state <- forecast_markov(initial_state, transition_matrix, steps)
print(future_state)
       Estado1   Estado2   Estado3
[1,] 0.4568054 0.2825327 0.2606619
