func somaDeNumerosConsecutivos() {
    print ("Insira um valor inteiro: ",terminator: "")
    let valorInserido = readLine()

    if let valorInserido = valorInserido {
        if let valorInseridoInt = Int(valorInserido) {
        
            // Variável que receberá a soma dos números
            var soma = valorInseridoInt
            // Variável que receberá o próximo número a ser somado
            var proximoValor = valorInseridoInt
            
            // Caso seja ímpar, não incluir no conjunto e passar ao próximo (+1)
            if (valorInseridoInt%2 != 0) {
                proximoValor += 1
                soma += 1
            }
            
            for _ in 1...4 {
                proximoValor += 2
                soma += proximoValor
            }
            print(soma)
        }
        else {
            print("Não foi possível converter para Int")
        }
    }
    else {
        print ("Valor não inserido")
    }

}