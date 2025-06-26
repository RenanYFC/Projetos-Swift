import Foundation

func calculadoraIMC(peso: Double, altura: Double) -> String {
    let imc = peso/(pow(altura,2))
    
    
    switch imc {
        case 0..<18.5:
            return "Abaixo do peso"
        case 18.5...25:
            return "Peso normal"
        case 26...30:
            return "Sobrepeso"
        case 30...:
            return "Obesidade"
        default:
            return "Valor Inválido"
    }
    
}

// print(calculadoraIMC(peso:67.0, altura: 1.74))