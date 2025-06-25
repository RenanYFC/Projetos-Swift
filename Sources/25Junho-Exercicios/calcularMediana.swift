func calcularMediana() {
    var lista = [1,2,3,5,10,9,6,7,8,4] 
    //var lista = [1,2,7,7,34,55,9,9,10] (caso ímpar)

    var mediana:Double = 0
    let tamanho = (lista.count/2)

    lista.sort()

    if (lista.count % 2 == 0) {
        let m1 = lista[tamanho-1]
        let m2 = lista[tamanho]
        mediana = Double(m1+m2)/2.0

    }
    else {
        mediana = Double(lista[tamanho])
    }

    print(mediana)
}