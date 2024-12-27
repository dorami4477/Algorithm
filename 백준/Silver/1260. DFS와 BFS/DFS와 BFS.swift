    let nmv = readLine()!.split(separator: " ").map{ Int($0)!}
    let n = nmv[0], m = nmv[1], v = nmv[2]
    var graph = [[Int]](repeating: [], count: n + 1)
    var dfsVisited = [Bool](repeating: false, count: n + 1)
    var bfsVisited = [Bool](repeating: false, count: n + 1)
    
    for _ in 0..<m {
        let v = readLine()!.split(separator: " ").map{ Int($0)! }
        graph[v[0]].append(v[1])
        graph[v[1]].append(v[0])
    }
    
    var dfsOrder = [Int]()
    func dfs(_ n: Int) {
        dfsOrder.append(n)
        dfsVisited[n] = true
        
        for nextNode in graph[n].sorted() {
            if !dfsVisited[nextNode] {
                dfs(nextNode)
            }
        }
    }
    
    var bfsOrder = [Int]()
    
    func bfs(_ n: Int) {
        var queue = [n]
        var idx = 0
        bfsVisited[n] = true
        bfsOrder.append(n)
        
        while queue.count > idx {
            for nextNode in graph[queue[idx]].sorted() {
                if !bfsVisited[nextNode]{
                    bfsVisited[nextNode] = true
                    bfsOrder.append(nextNode)
                    queue.append(nextNode)
                }
            }
            idx += 1
        }
    }
    
    dfs(v)
    bfs(v)
    print(dfsOrder.map{ String($0) }.joined(separator: " "))
    print(bfsOrder.map{ String($0) }.joined(separator: " "))