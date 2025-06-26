func operadorAnd() {
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    let c = Int(readLine()!)!
    let d = Int(readLine()!)!

    if ( (b>c && d>a) && ((c+d)>(a+b)) && (c>0 && d>0) && (a%2==0)) {
        print("valores aceitos")
    }
    else {
        print("valores não aceitos")
    }
}