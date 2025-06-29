func conversaoParaInt() {
    let num:String? = "texto"

    if let input = num {
        if let inputInt = Int(input) {
            print("convertido com sucesso: \(inputInt)")
        }
        else {
            print("não foi possível converter")
        }
    }
    else {
        print("o usuário não inseriu nada")
    }
}