    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = input[0], m = input[1], r = input[2]
    
    var arr = [[Int]](repeating: [], count: n + 1)
    var order = [Int](repeating: 0, count: n + 1)
    
    for _ in 0..<m {
        let edge = readLine()!.split(separator: " ").map{ Int($0)! }
        arr[edge[0]].append(edge[1])
        arr[edge[1]].append(edge[0])
    }

    var idx = 1

    func dfs(n: Int) {
        order[n] = idx
        idx += 1
        
        for i in arr[n].sorted(by: >) {
            if order[i] == 0 {
                dfs(n: i)
            } else {
                continue
            }
        }
    }

    dfs(n: r)
    for i in order[1...] {
        print(i)
    }