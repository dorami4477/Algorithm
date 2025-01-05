   let nc = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = nc[0], c = nc[1]
    var house = [Int]()
    
    for _ in 0..<n {
        let num = Int(readLine()!)!
        house.append(num)
    }
    
    house.sort()
    
    var minValue = 1
    var maxValue = house[house.count - 1] - house[0]
    var answer = 0
    
    while minValue <= maxValue {
        let mid = (minValue + maxValue) / 2
        var queue = [Int]()
        var idx = 0
        queue.append(house[0])
        
        for i in 1..<house.count {
            if queue.count <= idx {
                break
            }
            if house[i] - queue[idx] >= mid {
                queue.append(house[i])
                idx += 1
            }
        }
        
        if queue.count < c {
            maxValue = mid - 1
        } else {
            minValue = mid + 1
            
            var distance = 1000000000
            for i in 1..<queue.count {
                distance = min(distance, queue[i] - queue[i - 1])
            }
            answer = max(answer, distance)
        }
    }
    
    print(answer)