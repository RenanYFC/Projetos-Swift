import Foundation

print("informe a idade em dias: ",terminator:"")
let dias = Int(readLine()!)!

let anos = (dias/365)

let mesesRestantes = dias%365/30

let diasRestantes = dias%365%30


print("""
\(anos) ano(s)
\(mesesRestantes) mes(es)
\(diasRestantes) dia(s)
""")
