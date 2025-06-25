func contadorDeNotas() {
    print("Insira o valor: ",terminator:"")
    let valorInserido = Int(readLine()!)!

    /**
    Variável "valor" inicialmente terá o valor total informado, conforme a quantidade de 
    notas for descoberta, o valor restante será armazenado aqui para ir passando de nota
    em nota, das maiores às menores.
    */
    var valor = valorInserido

    let contadorDeCem = valor/100

    // O "-=" substitui escrever "valor = valor - contadorDeCem*100"
    valor -= contadorDeCem*100

    let contadorDeCinquenta = valor/50
    valor -= contadorDeCinquenta*50

    let contadorDeVinte = valor/20
    valor -= contadorDeVinte*20

    let contadorDeDez = valor/10
    valor -= contadorDeDez*10

    let contadorDeCinco = valor/5
    valor -= contadorDeCinco*5

    let contadorDeDois = valor/2
    valor -= contadorDeDois*2

    print ("""

    \(contadorDeCem) nota(s) de R$100,00
    \(contadorDeCinquenta) nota(s) de R$50,00
    \(contadorDeVinte) nota(s) de R$20,00
    \(contadorDeDez) nota(s) de R$10,00
    \(contadorDeCinco) nota(s) de R$5,00
    \(contadorDeDois) nota(s) de R$2,00
    \(valor) nota(s) de R$1,00

    """)

}
