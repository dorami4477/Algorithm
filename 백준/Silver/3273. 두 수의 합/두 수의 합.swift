    let n = Int(readLine()!)!
    let nums = readLine()!.split(separator: " ").map{ Int($0)! }
    let sum = Int(readLine()!)!
    var answer = 0
    var d = [Bool](repeating: false, count: 2000000 + 1)

    for e in nums {
        d[e] = true
    }
    
    for e in nums {
        if  e < sum, d[sum - e] {
            answer += 1
        }
    }
    
    print(answer / 2)