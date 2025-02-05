    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let nephew = input[0]
    let snacks = readLine()!.split(separator: " ").map{ Int($0)! }
    
    var minV = 1
    var maxV = snacks.max()!
    var answer = 0
    
    while minV <= maxV {
        let mid = (minV + maxV) / 2
        var newSnack = 0
        for i in snacks {
            if i >= mid {
                newSnack += i / mid
            }
        }
        
       if newSnack < nephew {
            maxV = mid - 1
        } else {
            minV = mid + 1
            
            answer = max(answer, mid)
        }
    }
    
    print(answer)