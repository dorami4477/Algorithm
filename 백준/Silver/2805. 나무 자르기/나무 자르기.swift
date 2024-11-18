    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let _ = input[0], m = input[1]
    let arr = readLine()!.split(separator: " ").map{ Int($0)! }
    
    var front = 0
    var end = arr.max()!
    
    while front <= end {
        var sum = 0
        let mid = (front + end) / 2
         
        for i in arr {
            if i - mid > 0 {
                sum += (i - mid)
            }
        }
        if sum < m {
            end = mid - 1
            
        } else {
            front = mid + 1
        }
    }

    print(front - 1)