import Foundation

print("informe o raio da esfera: ",terminator:"")
let raio = Double(readLine()!)!

let vol = (4/3)*3.14159*pow(raio,3)

print( String ( format:"%.3f", vol))
