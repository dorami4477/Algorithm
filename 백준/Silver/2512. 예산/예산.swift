    let n = Int(readLine()!)!
    let request = readLine()!.split(separator: " ").map{ Int($0)! }
    let budget = Int(readLine()!)!
    
    var min = budget / n
    var max = request.max()!
    var mid = (min + max) / 2
    var answer = [Int]()
    
    while min <= max {
        var sum = 0
        for i in request {
            if i <= mid {
                sum += i
            } else if i > mid {
                sum += mid
            }
        }
            
        if sum > budget {
            max = mid - 1
            mid = (min + max) / 2
        } else if sum <= budget {
            answer.append(mid)
            min = mid + 1
            mid = (min + max) / 2
        }
    }
    print(answer.max()!)