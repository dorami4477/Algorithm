    let testCase = Int(readLine()!)!
    for _ in 0..<testCase {
        let nm = readLine()!.split(separator: " ").map{ Int($0)! }
        let n = nm[0], m = nm[1]
        var graph = [[Int]](repeating: [], count: n + 1)
        var visited = [Bool](repeating: false, count: n + 1)
        for _ in 0..<m {
            let m = readLine()!.split(separator: " ").map{ Int($0)! }
            graph[m[0]].append(m[1])
            graph[m[1]].append(m[0])
        }

        var count = 0
        
        func bfs(_ n: Int) {
            visited[n] = true
            
            for i in graph[n] {
                if !visited[i] {
                    count += 1
                    bfs(i)
                }
            }
        }
        bfs(1)
        print(count)
    }