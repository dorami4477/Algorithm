    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    let n = nm[0], m = nm[1]
    var graph = [[Int]]()
    var visited = [[Bool]](repeating: Array(repeating: false, count: m), count: n)
    
    for _ in 0..<n {
        let line = readLine()!.map{ Int(String($0))! }
        graph.append(line)
    }

    let dx = [1, 0, -1, 0]
    let dy = [0, 1, 0, -1]
    var depth = 0
    
    func bfs(y: Int, x: Int) {
        visited[y][x] = true
        var queue = [(y, x, 1)]
        var index = 0
        
        while queue.count > index {
            if queue[index].0 == n - 1 && queue[index].1 == m - 1 {
                depth = queue[index].2
                return
            }
            
            for i in 0..<4 {
                let nx = queue[index].1 + dx[i]
                let ny = queue[index].0 + dy[i]
                let count = queue[index].2 + 1
                
                if nx < 0 || ny < 0 || nx >= m || ny >= n {
                    continue
                }
                
                if !visited[ny][nx] && graph[ny][nx] == 1 {
                    visited[ny][nx] = true
                    queue.append((ny, nx, count))
                }
            }
            index += 1
        }
    }
  
    bfs(y: 0, x: 0)
    print(depth)