import Foundation
func calculadoraPrecos() {
    let x = Int(readLine()!)!
    let y = Int(readLine()!)!
    var preco:Double

    switch x {
        case 1:
            preco=4.0
        case 2:
            preco=4.5
        case 3:
            preco=5.0
        case 4:
            preco=2.0
        case 5:
            preco=1.5
        default:
            preco = 0
    }

    let total = Double(y)*preco

    print(String(format: "Total: R$ %.2f",total))

}