func calculadoraPreco(_ preco:Double, _ desconto:Double,imposto:Double = 12.0) -> Double{
    
    let precoComDesconto = preco-((desconto*preco)/100)
    
    return precoComDesconto+((imposto*precoComDesconto)/100)
}

// print(calculadoraPreco(100.0,10.0,imposto:10.0))