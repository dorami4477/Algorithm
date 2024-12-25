    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    let n = nm[0], m = nm[1]
    var graph = [[Int]](repeating: [], count: n + 1)
    var visited = [Bool](repeating: false, count: n + 1)
    
    for _ in 0..<m {
        let uv = readLine()!.split(separator: " ").map{Int($0)!}
        graph[uv[0]].append(uv[1])
        graph[uv[1]].append(uv[0])
    }
    var answer = 0
    
    func dfs(_ n: Int) {
        visited[n] = true
        for i in graph[n] {
            if !visited[i] {
                dfs(i)
            }
        }
    }
    
    for i in 1..<n+1 {
        if !visited[i] {
            answer += 1
            dfs(i)
        }
    }

    print(answer)