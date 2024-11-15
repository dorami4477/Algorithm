    let _ = Int(readLine()!)!
    var arr = readLine()!.split(separator: " ").map{ Int($0)! }
    arr.sort()

    var sum = 0
    var sumArr = [Int]()
    for i in arr {
        sum += i
        sumArr.append(sum)
    }
    
    print(sumArr.reduce(0, +))
