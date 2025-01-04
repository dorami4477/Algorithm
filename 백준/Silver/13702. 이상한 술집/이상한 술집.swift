    let nk = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = nk[0], k = nk[1]
    var pot = [Int]()
    
    for _ in 0..<n {
        pot.append(Int(readLine()!)!)
    }
    
    var min = 1
    var max = pot.max()!
    var answer = [Int]()
    
    while min <= max {
        let mid = (min + max) / 2
        var count = 0
        
        for i in pot {
            count += i / mid
        }

        if count < k {
            max = mid - 1
        } else {
            answer.append(mid)
            min = mid + 1
        }
    }
    
    print(answer.max()!)