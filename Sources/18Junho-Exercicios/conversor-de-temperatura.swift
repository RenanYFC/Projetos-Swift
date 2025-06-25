/**
Enunciado:
    Leia uma temperatura em graus Celsius e converta para Fahrenheit usando a formula:
    F = (C × 9/5) + 32
    Entrada:
    Um numero real representando a temperatura em Celsius.
    Saida:
    Imprima a mensagem F=XX.XX, com duas casas decimais.
*/

import Foundation

func conversorTemperatura() {
    print ("Insira o valor em °C: ")

    let celsius = Double(readLine()!)!

    let fah = (celsius*9/5)+32

    print("F=\( String(format: "%.2f",(fah)) )")
}

