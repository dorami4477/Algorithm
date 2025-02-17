    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = input[0], m = input[1]
    var graph = [[Int]](repeating: [], count: n + 1)
    for i in 1...n {
        for j in 1...n {
            if i == j { continue }
            graph[i].append(j)
        }
    }
    
    var nums: Set<String> = []
    
    func dfs(num: Int, group: [Int]) {
        var group = group
        if group.count == m {
            nums.insert(group.sorted().map{ String($0) }.joined(separator: " "))
        }
        
        for i in graph[num] {
            if !group.contains(i) {
                group.append(i)
                dfs(num: i, group: group)
                group.removeLast()
            }
        }
    }

    for i in 1...n {
        dfs(num: i, group: [i])
    }
    
    nums.sorted().forEach { print($0) }