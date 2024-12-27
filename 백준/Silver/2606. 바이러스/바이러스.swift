    let n = Int(readLine()!)!
    let m = Int(readLine()!)!
    var graph = [[Int]](repeating: [], count: n + 1)
    var visited = [Bool](repeating: false, count: n + 1)
    
    for _ in 0..<m {
        let m = readLine()!.split(separator: " ").map{ Int($0)! }
        graph[m[0]].append(m[1])
        graph[m[1]].append(m[0])
    }
    
    var visit = [Int]()
    func dfs(_ n: Int) {
        visited[n] = true
        
        for nextNode in graph[n] {
            if !visited[nextNode] {
                visit.append(n)
                dfs(nextNode)
            }
        }
    }
    
    dfs(1)
    print(visit.count)