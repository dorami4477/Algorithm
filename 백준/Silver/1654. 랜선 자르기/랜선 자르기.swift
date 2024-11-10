    let KN = readLine()!.split(separator: " ").map{ Int($0)! }
    var arrK = [Int]()
    for _ in 0..<KN[0] {
        arrK.append(Int(readLine()!)!)
    }
    
    var front = 1
    var end = arrK.max()!
    var mid = (front + end) / 2
    
    while front <= end {
        var count = 0
        
        
        arrK.forEach {
            count += ($0 / mid)
        }

        if count < KN[1] {
            end = mid - 1
            mid = (front + end) / 2
        } else if count >= KN[1] {
            front = mid + 1
            mid = (front + end) / 2
        }
    }
    
    print(mid)