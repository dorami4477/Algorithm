    let n = Int(readLine()!)!
    let line = readLine()!.split(separator: " ").map{ Int($0)! }
    var city = readLine()!.split(separator: " ").map{ Int($0)! }

    for i in 1..<n - 1 {
        if city[i - 1] < city[i] {
            city[i] = city[i - 1]
        }
    }
    var sum = 0
    
    for i in 0..<line.count {
        sum += city[i] * line[i]
    }
    
    print(sum)