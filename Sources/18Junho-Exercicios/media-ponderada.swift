/**
Enunciado:
    Calcule a media ponderada de duas notas, com pesos 3 e 2.
    Formula:
    media = (nota1 × 3 + nota2 × 2) / 5
    Entrada:
    Dois valores decimais (Double), representando as notas.
    Saida:
    Mostre M=XX.XX, com duas casas decimais.

*/

import Foundation

print("Digite o 1º valor decimal: ", terminator: "")
let n1 = Double(readLine()!)!

print("Digite o 2º valor decimal: ", terminator: "")
let n2 = Double(readLine()!)!

let media = ((n1*3)+(n2*2))/5
print ("M= \( String(format: "%.2f",(media)) )")
