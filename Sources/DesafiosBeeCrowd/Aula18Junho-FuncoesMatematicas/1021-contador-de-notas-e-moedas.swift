import Foundation

func contadorDeNotasEMoedas() {
    // Receber o Input
    print ("Digite o valor total: ",terminator:"")
    let valor = Double(readLine()!)!

    // Armazenar a parte inteira
    var restanteDouble = Double(valor)

    // Armazenas os centavos
    var restanteInt = Int(exactly: (floor(valor*1)/1))!
    /**

    o Floor serve para manipular a quantidade de casas decimais. O passo a passo é:
    exemplo: quero deixar "valor=53,5353" com 2 casas decimais apenas
    (53,5353*100) = 5353,53
    (5353,53/100) = 53,53 (o resto é eliminado)

    */

    let notas100 = restanteInt/100
    restanteInt = restanteInt%100

    let notas50 = restanteInt/50
    restanteInt = restanteInt%50

    let notas20 = restanteInt/20
    restanteInt = restanteInt%20

    let notas10 = restanteInt/10
    restanteInt = restanteInt%10

    let notas5 = restanteInt/5
    restanteInt = restanteInt%5

    let notas2 = restanteInt/2
    restanteInt = restanteInt%2

    let moedas1 = restanteInt

    let conjuntoInteiros = (notas100*100)+(notas50*50)+(notas20*20)+(notas10*10)+(notas5*5)+(notas2*2)+(moedas1)

    restanteDouble = ceil ((valor - (Double(conjuntoInteiros)))*100)/100

    let moedas05 = Int(restanteDouble/0.5)

    // Em Swift, o operador % não está disponível para float/double, então é necessário usar:
    restanteDouble = restanteDouble.truncatingRemainder(dividingBy: 0.5)

    let moedas025 = Int(restanteDouble/0.25)
    restanteDouble = restanteDouble.truncatingRemainder(dividingBy: 0.25)

    let moedas010 = Int(restanteDouble/0.10)
    restanteDouble = restanteDouble.truncatingRemainder(dividingBy: 0.10)

    let moedas005 = Int(restanteDouble/0.05)
    restanteDouble = restanteDouble.truncatingRemainder(dividingBy: 0.05)

    let moedas001 = Int(restanteDouble)

    print("""

    NOTAS:
    \(notas100) nota(s) de R$ 100.00
    \(notas50) nota(s) de R$ 50.00
    \(notas20) nota(s) de R$ 20.00
    \(notas10) nota(s) de R$ 10.00
    \(notas5) nota(s) de R$ 5.00
    \(notas2) nota(s) de R$ 2.00
    MOEDAS:
    \(moedas1) moeda(s) de R$ 1.00
    \(moedas05) moeda(s) de R$ 0.50
    \(moedas025) moeda(s) de R$ 0.25
    \(moedas010) moeda(s) de R$ 0.10
    \(moedas005) moeda(s) de R$ 0.05
    \(moedas001) moeda(s) de R$ 0.01

    """)

}
