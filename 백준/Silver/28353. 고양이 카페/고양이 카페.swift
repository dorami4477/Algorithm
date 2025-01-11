    let nk = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = nk[0], k = nk[1]
    var arr = readLine()!.split(separator: " ").map{ Int($0)! }
    var visit = [Bool](repeating: false, count: n)
    var count = 0
    
    arr.sort(by: >)
    
    for i in 0..<n {
        let difference = k - arr[i]
        if !visit[i] {
            for j in i + 1..<n {
                if arr[j] <= difference {
                    if !visit[j] {
                        visit[i] = true
                        visit[j] = true
                        count += 1
                        break
                    }
                }
            }
        }
    }
    
    print(count)