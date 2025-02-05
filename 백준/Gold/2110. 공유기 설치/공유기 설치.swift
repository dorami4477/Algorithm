    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = input[0], c = input[1]
    var coord = [Int]()
    for _ in 0..<n {
        coord.append(Int(readLine()!)!)
    }
    
    coord.sort()
    
    var minV = 0
    var maxV = coord[n - 1] - coord[0]
    var maxDistance = 0
    
    while minV <= maxV {
        let mid = (minV + maxV) / 2
        var wifi = [coord[0]]
        var index = 0
        
        for i in 1..<n {
            if coord[i] - wifi[index] >= mid {
                wifi.append(coord[i])
                index += 1
            }
        }
        
        if wifi.count < c {
            maxV = mid - 1
        } else {
            minV = mid + 1
            var distance = 1000000000
            for i in 1..<wifi.count {
                let newDistance = wifi[i] - wifi[i - 1]
                distance = min(distance, newDistance)
            }
            
            maxDistance = max(maxDistance, distance)
        }
    }
    
    print(maxDistance)