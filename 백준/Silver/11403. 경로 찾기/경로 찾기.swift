    let n = Int(readLine()!)!
    var graph = [[Int]]()
    var visited = [Bool](repeating: false, count: n)
    for _ in 0..<n {
        graph.append(readLine()!.split(separator: " ").map{ Int($0)! })
    }
    
    var answer = [[Int]](repeating: Array(repeating: 0, count: n), count: n)
    func dfs(start: Int, now: Int) {
        for i in 0..<n {
            if graph[now][i] == 1 && !visited[i] {
                visited[i] = true
                answer[start][i] = 1
                dfs(start: start, now: i)
            }
        }
    }
    
    for i in 0..<n {
        dfs(start: i, now: i)
        visited = [Bool](repeating: false, count: n)
    }
    
    for i in answer {
        print(i.map{ String($0) }.joined(separator: " "))
    }