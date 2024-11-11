    let V = Int(readLine()!)!
    let E = Int(readLine()!)!
    var graph = [[Int]](repeating: [], count: V + 1)
    var visited = [Bool](repeating: false, count: V + 1)
    
    
    for _ in 0..<E {
        let vs = readLine()!.split(separator: " ").map{ Int($0)! }
        graph[vs[0]].append(vs[1])
        graph[vs[1]].append(vs[0])
    }
    
    func dfs(_ node: Int) {
        visited[node] = true
        for next in graph[node] {
            if !visited[next] {
                dfs(next)
            }
        }
    }
    
    dfs(1)
    var answer = 0
    
    visited.forEach {
        if $0 == true {
            answer += 1
        }
    }
    
    print(answer - 1)