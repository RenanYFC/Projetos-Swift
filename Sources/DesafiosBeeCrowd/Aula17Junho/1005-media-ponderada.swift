// Para usar a formatação de string, precisa fazer esse import
import Foundation

func mediaPonderada3Casas() {
    print("Insira o primeiro valor:")
    let num1 = 3.5*(Float(readLine()!)!)

    print("Insira o segundo valor:")
    let num2 = 7.5*(Float(readLine()!)!)

    // Deixar 5 casas decimais
    let media = String(format: "%.5f", ((num1+num2)/11))

    print("A média ponderada é "+media)
}

