    let NM = readLine()!.split(separator: " ").map{ Int($0)! }
    let nums = readLine()!.split(separator: " ").map{ Int($0)! }
    
    var sum = Array(repeating: 0, count: NM[0] + 1)
    for i in 0..<NM[0] {
        sum[i + 1] = sum[i] + nums[i]
    }
    for _ in 0..<NM[1] {
        let section = readLine()!.split(separator: " ").map{ Int($0)! }
        let sectionSum = sum[section[1]] - sum[section[0]] + nums[section[0] - 1]
        print(sectionSum)
    }