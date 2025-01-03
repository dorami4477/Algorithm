    let xy = readLine()!.split(separator: " ").map{ Double($0)! }
    var x = xy[0], y = xy[1]
    let winningRate = Int((y * 100) / x)
    
    var max = 1000000000
    var min = 1
    var mid = (min + max) / 2
    var count = [Int]()
    
    while min <= max {
        if (y * 100 / x) >= 99 {
            break
        }
        
        x += Double(mid)
        y += Double(mid)
        let newRate = Int((y * 100) / x)
        if winningRate < newRate {
            count.append(mid)
            max = mid - 1
            mid = (min + max) / 2
            
            x = xy[0]
            y = xy[1]
        } else {
            min = mid + 1
            mid = (min + max) / 2
            
            x = xy[0]
            y = xy[1]
        }
    }
    
        if (y * 100 / x) >= 99 {
            print(-1)
        } else {
            print(Int(count.min()!))
        }