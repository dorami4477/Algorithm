    let n = Int(readLine()!)!
    var arr = [Int]()
    
    for _ in 0..<n {
        arr.append(Int(readLine()!)!)
        
    }
    
    arr.sort(by: >)
    var newArr = [Int]()
    for i in 0..<arr.count {
        newArr.append(arr[i] * (i + 1))
    }
    
    print(newArr.max()!)