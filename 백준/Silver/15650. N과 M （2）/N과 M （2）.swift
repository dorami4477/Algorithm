    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = input[0], m = input[1]
    var graph = [[Int]](repeating: [], count: n + 1)
    
    for i in 1...n {
        for j in 1...n {
            if j == i { continue }
            graph[i].append(j)
        }
    }

    var answer: Set<String> = []
    
    for i in 1...n {
        dfs(i, count: 0, group: [i])
    }
    
    func dfs(_ n: Int, count: Int, group: [Int]) {
        var depth = count
        depth += 1
        var group = group
        if depth == m {
            let a  = group.sorted().map{ String($0) }.joined(separator: " ")
            answer.insert(a)
        }
        
        for i in graph[n] {
            if !group.contains(i) {
                group.append(i)
                dfs(i, count: depth, group: group)
                group.removeLast()
            }
        }
    }
    
    for i in answer.sorted() {
        print(i)
    }