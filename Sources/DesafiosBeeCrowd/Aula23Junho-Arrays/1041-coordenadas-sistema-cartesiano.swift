func coordenadasSistemaCartesiano() {
    let x = Float(readLine()!)!
    let y = Float(readLine()!)!

    if (x>0 && y>0) {
        print("Q1")
    }
    else if (x<0 && y>0) {
        print("Q2")
    }
    else if (x<0 && y<0) {
        print("Q3")
    }
    else if (x>0 && y<0) {
        print("Q4")
    }
    else if (x == 0 && y != 0) {
        print ("Eixo X")
    }
    else if (x != 0 && y == 0) {
        print ("Eixo Y")
    }
    else {
        print("Origem")
    }

}