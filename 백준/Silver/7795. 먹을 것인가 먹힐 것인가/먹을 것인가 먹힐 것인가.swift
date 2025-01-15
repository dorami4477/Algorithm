    let caseCount = Int(readLine()!)!
    
    for _ in 0..<caseCount {
        let _ = readLine()!
        let aList = readLine()!.split(separator: " ").map{ Int($0)! }
        var bList = readLine()!.split(separator: " ").map{ Int($0)! }
        
        bList.sort()
        var count = 0
        
        for a in aList {
            var min = 0
            var max = bList.count
            
            while min < max {
                let mid = (min + max) / 2
                
                if bList[mid] >= a {
                    max = mid
                    
                } else {
                    min = mid + 1
                }
            }
            count += min
        }
        
        print(count)
    }