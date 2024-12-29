    let mnk = readLine()!.split(separator: " ").map{ Int($0)! }
    let m = mnk[0], n = mnk[1], k = mnk[2]
    var map = [[Int]](repeating: Array(repeating: 0, count: n), count: m)
    var visit = [[Bool]](repeating: Array(repeating: false, count: n), count: m)
    
    for _ in 0..<k {
        let coord = readLine()!.split(separator: " ").map{ Int($0)! }
        let x1 = coord[0], y1 = coord[1], x2 = coord[2], y2 = coord[3]
        
        for x in x1..<x2 {
            for y in y1..<y2 {
                map[y][x] = 1
            }
        }
    }
    
    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]
    var count = 0
    
    func dfs(x: Int, y: Int) {
        visit[y][x] = true
        count += 1
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx < 0 || ny < 0 || nx >= n || ny >= m {
                continue
            }
            
            if !visit[ny][nx] && map[ny][nx] == 0 {
                visit[ny][nx] = true
                dfs(x: nx, y: ny)
                
            }
        }
    }
    var number = 0
    var answer = [Int]()
    for i in 0..<m {
        for j in 0..<n {
            if !visit[i][j] && map[i][j] == 0 {
                dfs(x: j, y: i)
                number += 1
                answer.append(count)
                count = 0
            }
        }
    }
    
    print(number)
    print(answer.sorted().map{String($0)}.joined(separator: " "))