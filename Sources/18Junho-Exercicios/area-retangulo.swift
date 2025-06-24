/**
Enunciado:
    Calcule a area de um retangulo com base e altura fornecidas.
    Formula:
    area = base × altura
    Entrada:
    Dois valores Double: base e altura
    Saida:
    Mostre Area = XX.XX com duas casas decimais.
*/

import Foundation

print("Digite a base do retângulo: ",terminator:"")
let base = Double(readLine()!)!

print("Digite a altura do retângulo: ",terminator:"")
let altura = Double(readLine()!)!

let area = base*altura

print("Área = \( String(format:"%.2f",area) )")
