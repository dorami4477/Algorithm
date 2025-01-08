    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nm[0], m = nm[1]
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    
    var newArray = [Int](repeating:0, count: n + 1)

    for i in 0..<n { 
        newArray[i + 1] = nums[i] + newArray[i]
    }
    
    var count = 0
    
    for j in 1...n {
        for i in 1...j {
            if newArray[j] - newArray[i] + nums[i - 1] == m {
                count += 1
            }
        }
    }
    
    print(count)