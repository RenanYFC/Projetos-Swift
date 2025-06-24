print ("== Conversor de Horas ==")

print ("Digite a quantidade de segundos: ",terminator:"")
let tempo = Int(readLine()!)!

let segundos = tempo%60
let minutos = (tempo/60)%60
let horas = (tempo/60)/60

print ("\(horas)h : \(minutos)min : \(segundos)seg")
