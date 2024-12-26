    let nmr = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = nmr[0], m = nmr[1], r = nmr[2]
    var graph = [[Int]](repeating: [], count: n + 1)
    var visited = [Int](repeating: 0, count: n + 1)
    
    for _ in 0..<m {
        let m = readLine()!.split(separator: " ").map{ Int($0)! }
        graph[m[0]].append(m[1])
        graph[m[1]].append(m[0])
    }
    
    var order = 1
    
    func bfs(n : Int) {
        var queue = [n]
        visited[n] = order
        var index = 0
        
        while queue.count > index {
            let node = queue[index]
            
            for i in graph[node].sorted() {
                if visited[i] == 0 {
                    order += 1
                    visited[i] = order
                    queue.append(i)
                }
            }
            index += 1
        }
    }
    
    bfs(n: r)
    
    print(visited[1...].map{ String($0) }.joined(separator: "\n"))