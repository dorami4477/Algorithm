    let n = Int(readLine()!)!
    let people = readLine()!.split(separator: " ").map{ Int($0)! }
    let person1 = people[0], person2 = people[1]
    let m = Int(readLine()!)!
    var graph = [[Int]](repeating: [], count: n + 1)
    var visited = [Bool](repeating: false, count: n + 1)
    
    for _ in 0..<m {
        let m = readLine()!.split(separator: " ").map{ Int($0)! }
        graph[m[0]].append(m[1])
        graph[m[1]].append(m[0])
    }

    var found = false
    
    func dfs(_ n: Int, count: Int) {
        visited[n] = true

        if n == person2 {
            print(count)
            found = true
            return
        }
        
        for i in graph[n] {
            if !visited[i] {
                dfs(i, count: count + 1)
            }
        }
    }

    dfs(person1, count: 0)
    
    if !found {
        print(-1)
    }