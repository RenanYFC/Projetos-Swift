func criarArray10Valores() {
    var x = [Int] ()
    for i in 1...10 {
        print("Insira o \(i)° valor: ",terminator: "")
        let valorInserido = readLine()
        
        if let valor = valorInserido {
            if let valorInt = Int(valor) {
                if (valorInt < 0 || valor.isEmpty) {
                    x.append(1)
                }
                else {
                    x.append(valorInt)
                }   
        }
        }
        else {
            print("Valor não inserido")
        }
        
    }
}