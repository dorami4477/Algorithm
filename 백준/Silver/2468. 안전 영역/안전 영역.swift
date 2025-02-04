    let n = Int(readLine()!)!
    var graph = [[Int]]()
    
    for _ in 0..<n {
        graph.append(readLine()!.split(separator: " ").map{ Int($0)! })
    }
    
    var safeArea = 1
    var maxHeight = 1
    
    graph.forEach {
        maxHeight = max(maxHeight, $0.max() ?? maxHeight)
    }
    
    for height in 1...maxHeight {
        var safe = 0
        var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
        
        for i in 0..<n {
            for j in 0..<n {
                if !visited[i][j] && graph[i][j] > height {
                    safe += 1
                    dfs(y: i, x: j)
                }
            }
        }

        safeArea = max(safeArea, safe)

        func dfs(y: Int, x:Int) {
            visited[y][x] = true
            let dx = [-1, 1, 0, 0]
            let dy = [0, 0, -1, 1]
            
            for i in 0..<4 {
                if x + dx[i] >= 0, x + dx[i] < n,
                    y + dy[i] >= 0, y + dy[i] < n,
                    !visited[y + dy[i]][x + dx[i]]
                    && graph[y + dy[i]][x + dx[i]] > height {

                    dfs(y: y + dy[i], x: x + dx[i])
                }
            }
        }

    }
    print(safeArea)