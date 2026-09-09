import numpy as np
import pandas as pd

# Crear una matriz de transición
transition_matrix = np.array([
    [0.7, 0.2, 0.1],
    [0.3, 0.4, 0.3],
    [0.2, 0.3, 0.5]
])

# Dar nombres a las filas y columnas mediante un DataFrame para mejor legibilidad
estados = ["Estado1", "Estado2", "Estado3"]
transition_df = pd.DataFrame(transition_matrix, index=estados, columns=estados)

# Mostrar la matriz de transición
print("Matriz de transición:")
print(transition_df)

# Verificar si cada fila suma 1 (propiedad de probabilidad de transición)
print("\nSuma por fila:")
print(transition_matrix.sum(axis=1))

# Estado inicial (por ejemplo, empezando en Estado1)
initial_state = np.array([1, 0, 0])

# Número de pasos en el futuro
steps = 10

# Función para pronosticar estados futuros
def forecast_markov(initial_state, transition_matrix, steps):
    # En Python se puede multiplicar la matriz por sí misma 'steps' veces (potencia matricial)
    # o iterar paso a paso con el operador @
    state = initial_state
    for _ in range(steps):
        state = state @ transition_matrix
    return state

# Realizar el pronóstico
future_state = forecast_markov(initial_state, transition_matrix, steps)

print("\nEstado futuro (pronóstico):")
print(pd.Series(future_state, index=estados))
