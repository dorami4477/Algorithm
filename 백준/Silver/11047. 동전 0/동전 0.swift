    let nm = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = nm[0]
    var m = nm[1]
    
    var arr = [Int]()
    
    for i in 0..<n {
        arr.append(Int(readLine()!)!)
    }

    var sum = 0
    
    arr.sort(by: >)
    
    for i in arr {
        sum += m / i
        m = m % i
    }

    print(sum)