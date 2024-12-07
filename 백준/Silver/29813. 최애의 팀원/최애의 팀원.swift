    let n = Int(readLine()!)!
    var arr = [(String, Int)]()
    
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ")
        arr.append((String(input[0]), Int(input[1])!))
    }
    
    var front = 0
    var pointer = 1
    
    while arr.count - 1 > front {
        for _ in 0..<arr[front].1 - 1 {
            arr.append(arr[pointer])
            pointer += 1
        }
        
        front = pointer + 1
        pointer += 2
    }

    print(arr.last!.0)