func anoBissexto(ano: Int) -> Bool {
    if (ano%4 == 0 && (ano%100 != 0 || ano%4 == 0) ) {
        return true
    }
    else {
        return false
    }
}

//print("O ano é bissexto? \(anoBissexto(ano: 2033))")