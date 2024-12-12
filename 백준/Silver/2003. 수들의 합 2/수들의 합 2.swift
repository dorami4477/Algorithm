    let nm = readLine()!.split(separator: " ").map{ Int($0)! }
    var n = nm[0]
    let m = nm[1]
    let nums = readLine()!.split(separator: " ").map{ Int($0)! }
    var arr = [Int](repeating: 0, count: n + 1)
    
    var answer = 0
    var start = 1
    
    for i in 0..<n {
        arr[i + 1] = arr[i] + nums[i]
    }

    for _ in 0..<n {
        while start <= n {
            if arr[n] - arr[start] + nums[start - 1] == m {
                answer += 1
            }
            start += 1
        }
        start = 1
        n -= 1
    }
    
    print(answer)