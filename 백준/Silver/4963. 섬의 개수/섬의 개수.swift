    while true {
        let size = readLine()!.split(separator: " ").map{ Int($0)! }
        
        if size == [0, 0] {
            break
        }
        
        var map = [[Int]]()
        var visit = [[Bool]](repeating: Array(repeating: false, count: size[0]), count: size[1])
        
        for _ in 0..<size[1] {
            let line = readLine()!.split(separator: " ").map{ Int($0)! }
            map.append(line)
        }
        
        //동서남북
        let dx = [1, -1, 0, 0, -1, 1, 1, -1]
        let dy = [0, 0, 1, -1, -1, 1, -1, 1]
        
        var count = 0
        func dfs(x: Int, y: Int) {
            visit[y][x] = true
            
            for i in 0..<8 {
                let nx = x + dx[i]
                let ny = y + dy[i]
                
                if nx < 0 || ny < 0 || nx >= size[0] || ny >= size[1] {
                    continue
                }
                
                if !visit[ny][nx] && map[ny][nx] == 1 {
                    visit[ny][nx] = true
                    dfs(x: nx, y: ny)
                    
                }
            }
        }
        
        for i in 0..<size[1] {
            for j in 0..<size[0] {
                if !visit[i][j] && map[i][j] == 1 {
                    count += 1
                    dfs(x: j, y: i)
                }
            }
        }
        print(count)
    }