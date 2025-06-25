func divisoresEmComum() {
    let numeros = [1,2,3,4,5,6,7,8,9,10,15,30,25,45]
    let arrPor5e3 = numeros.filter{($0 % 3 == 0) && ($0 % 5 == 0) }
    print(arrPor5e3)
}