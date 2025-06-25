func removerRedundancia() {
    let arr = [1,1,2,2,3,3,4,5,5,6,7,8,8,1]
    var arrUnique:[Int] = []

    for item in arr {
        if (!arrUnique.contains(item)) {
            arrUnique.append(item)
        }
    }
    print(arrUnique)
}