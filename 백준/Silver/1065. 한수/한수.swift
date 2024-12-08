    let n = Int(readLine()!)!
    var answer = [Int]()
    for i in 1...n {
        let arr = String(i).map{ String($0) }.map{ Int($0)! }
        
        if 99 < i {
            let a = arr[0] - arr[1]
            let b = arr[1] - arr[2]
            if a == b {
                answer.append(i)
            }
        } else {
            answer.append(i)
        }
    }
    
    print(answer.count)