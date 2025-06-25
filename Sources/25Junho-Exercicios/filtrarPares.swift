func filtrarPares() {
    let numeros = [1,2,3,4,5,6,7,8,9,10]
    let arr = numeros.filter{$0 % 2 == 0}
    print(arr)

}