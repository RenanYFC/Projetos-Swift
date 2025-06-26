func intervalos() {
    let num = Float(readLine()!)!

    if (num >= Float(0) && num <= Float(25)) {
        print ("Intervalo [0,25]")
    }
    else if (num > Float(25) && num <= Float(50)) {
        print ("Intervalo [25,50]")
    }
    else if (num > Float(50) && num <= Float(75)) {
        print ("Intervalo [50,75]")
    }
    else if (num > Float(75) && num <= Float(100)) {
        print ("Intervalo [75,100]")
    }
    else {
        print("Fora do intervalo!")
    }
}