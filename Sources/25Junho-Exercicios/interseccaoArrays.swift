func interseccaoArrays() {
    let arr1 = [1,2,3,4,5,]
    let arr2 = [3,4,5,6,7,8]
    var arr3:[Int] = []

    for item in arr1 {
        if (arr2.contains(item)) {
            arr3.append(item)
        }
    }

    print(arr3)
}