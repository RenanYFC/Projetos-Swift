/**
Enunciado:
    Leia o nome de um produto, o valor unitario e a quantidade comprada.
    Calcule e exiba o valor total.
    Entrada:
    Tres linhas:
    1. Nome do produto (String)
    2. Preco unitario (Double)
    3. Quantidade (Int)
    Saida:
    Mostre Total = R$ XX.XX
*/

import Foundation

func valorProduto() {
    print("Digite o nome do produto: ",terminator:"")
    let nome = readLine()!

    print("Digite o valor unitário do produto: ",terminator:"")
    let valorUn = Double(readLine()!)!

    print("Digite a quantidade de produtos: ",terminator:"")
    let qtdd = Int(readLine()!)!

    let valorTotal = valorUn*Double(qtdd)

    // Ele entende que, caso haja ponto flutuante, limitar em 2 casas
    print("Total de \(nome) = R$ \( String(format:"%.2f",(valorTotal)) )")
}
