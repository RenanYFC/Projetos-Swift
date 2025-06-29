/**
Enunciado:
Crie um programa que recebe um array de inteiros e imprime a
soma de todos os valores do array.
*/
func somaArray() {
    let arr = [1,2,3,4]
    var soma = 0

    for num in arr {
        soma += num
    }

    /**
    Essa é outra forma de usar um for,
    passando uma lista no final para que
    o próprio swift identifique o range
    */
}