# Prima-media-escalonada
import pandas as pd
import matplotlib.pyplot as plt
# Datos de ejemplo
data = {
    'Año': [2024, 2025, 2026, 2027, 2028],
    'Número de Afiliados': [1000, 1050, 1100, 1150, 1200],
    'Salario Promedio Anual': [30000, 31000, 32000, 33000, 34000],
    'Tasa de Contribución (%)': [0.10, 0.10, 0.12, 0.12, 0.15],
    'Beneficios Pagados': [2500000, 2600000, 2700000, 2800000, 2900000]
}
# Crear un DataFrame
df = pd.DataFrame(data)

# Calcular la Contribución Anual Total
df['Contribución Anual Total'] = df['Número de Afiliados'] * df['Salario Promedio Anual'] * df['Tasa de Contribución (%)']

# Calcular el Saldo Anual del Fondo
df['Saldo Anual del Fondo'] = df['Contribución Anual Total'] - df['Beneficios Pagados']
df['Saldo Acumulado'] = df['Saldo Anual del Fondo'].cumsum()

# Mostrar el DataFrame
print(df)
# Graficar el Saldo Anual del Fondo y el Saldo Acumulado
plt.figure(figsize=(12, 6))

plt.plot(df['Año'], df['Saldo Anual del Fondo'], label='Saldo Anual del Fondo', marker='o')
plt.plot(df['Año'], df['Saldo Acumulado'], label='Saldo Acumulado', marker='s')

# Personalizar la gráfica
plt.xlabel('Año')
plt.ylabel('Valor en MXN')
plt.title('Simulación del Saldo del Fondo de Pensiones')
plt.legend()
plt.grid(True)
plt.show()
# Exportar a un archivo de Excel
df.to_excel('resultado_prima_media_escalonada.xlsx', index=False)
print("Archivo Excel exportado con éxito.")

