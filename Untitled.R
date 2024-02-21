# Solicitar al usuario la unidad de temperatura y el valor
unidad_origen <- readline("Ingrese la unidad de temperatura de origen (Celsius, Fahrenheit, Kelvin o Rankine): ")
valor <- as.numeric(readline("Ingrese el valor de temperatura: "))
unidad_destino <- readline("Ingrese la unidad de temperatura de destino (Celsius, Fahrenheit, Kelvin o Rankine): ")


# Función para convertir temperaturas
convertir_temperatura <- function(valor, unidad_origen, unidad_destino) {
  if (unidad_origen == "Celsius") {
    if (unidad_destino == "Fahrenheit") {
      resultado <- valor * 9/5 + 32
      cat(valor, "grados Celsius son equivalentes a", resultado, "grados Fahrenheit.\n")
    } else if (unidad_destino == "Kelvin") {
      resultado <- valor + 273.15
      cat(valor, "grados Celsius son equivalentes a", resultado, "Kelvin.\n")
    } else if (unidad_destino == "Rankine") {
      resultado <- (valor + 273.15) * 9/5
      cat(valor, "grados Celsius son equivalentes a", resultado, "grados Rankine.\n")
    } else {
      cat("Unidad de temperatura de destino no reconocida.\n")
    }}
  else if (unidad_origen == "Fahrenheit") {
    if (unidad_destino == "Celsius") {
      resultado <- (valor - 32) * 5/9
      cat(valor, "grados Fahrenheit son equivalentes a", resultado, "grados Celsius.\n")
    } else if (unidad_destino == "Kelvin") {
      resultado <- (valor - 32) * 5/9 + 273.15
      cat(valor, "grados Fahrenheit son equivalentes a", resultado, "Kelvin.\n")
    } else if (unidad_destino == "Rankine") {
      resultado <- valor + 459.67
      cat(valor, "grados Fahrenheit son equivalentes a", resultado, "grados Rankine.\n")
    } else {
      cat("Unidad de temperatura de destino no reconocida.\n")
    }}
  
  
  else if (unidad_origen == "Kelvin") {
    if (unidad_destino == "Celsius") {
      resultado <- valor - 273.15
      cat(valor, "Kelvin son equivalentes a", resultado, "grados Celsius.\n")
    } else if (unidad_destino == "Fahrenheit") {
      resultado <- (valor - 273.15) * 9/5 + 32
      cat(valor, "Kelvin son equivalentes a", resultado, "grados Fahrenheit.\n")
    } else if (unidad_destino == "Rankine") {
      resultado <- valor * 9/5
      cat(valor, "Kelvin son equivalentes a", resultado, "grados Rankine.\n")
    } else {
      cat("Unidad de temperatura de destino no reconocida.\n")
    }}
  
 else if (unidad_origen == "Rankine") {
    if (unidad_destino == "Celsius") {
      resultado <- (valor - 491.67) * 5/9
      cat(valor, "grados Rankine son equivalentes a", resultado, "grados Celsius.\n")
    } else if (unidad_destino == "Fahrenheit") {
      resultado <- valor - 459.67
      cat(valor, "grados Rankine son equivalentes a", resultado, "grados Fahrenheit.\n")
    } else if (unidad_destino == "Kelvin") {
      resultado <- valor * 5/9
      cat(valor, "grados Rankine son equivalentes a", resultado, "Kelvin.\n")
    } else {
      cat("Unidad de temperatura de destino no reconocida.\n")
    }
  } else {
    cat("Unidad de temperatura de origen no reconocida.\n")
  }
}

# Realizar la conversión de temperatura y mostrar el resultado
convertir_temperatura(valor, unidad_origen, unidad_destino)