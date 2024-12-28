   let caseCount = Int(readLine()!)!
    
    for _ in 0..<caseCount {
        let mnk = readLine()!.split(separator: " ").map{ Int($0)! }
        let m = mnk[0], n = mnk[1], k = mnk[2]
        var graph = [[Int]](repeating: Array(repeating: 0, count: m), count: n)
        var visit = [[Bool]](repeating: Array(repeating: false, count: m), count: n)

        for _ in 0..<k {
            let cabage = readLine()!.split(separator: " ").map{ Int($0)! }
            graph[cabage[1]][cabage[0]] = 1
        }
        
        let dx = [-1, 0, 1, 0]
        let dy = [0, 1, 0, -1]
        
        func dfs(x: Int, y: Int) {
            visit[y][x] = true

            for i in 0..<4 {
                let nx = x + dx[i]
                let ny = y + dy[i]
                
                if ny < 0 || ny >= n || nx < 0 || nx >= m {
                    continue
                }

                if graph[ny][nx] == 1 && !visit[ny][nx] {
                    visit[ny][nx] = true
                    dfs(x: nx, y: ny)
                }
            }
        }

        var count = 0
        for y in 0..<n {
            for x in 0..<m {
                if !visit[y][x] && graph[y][x] == 1 {
                    count += 1
                    dfs(x: x, y: y)
                }
            }
        }
        print(count)
    }