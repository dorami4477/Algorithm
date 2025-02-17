    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = input[0], m = input[1]

    func dfs(num: Int, group: [Int]) {
        var group = group
        if group.count == m {
            print(group.map{ String($0) }.joined(separator: " "))
            return
        }
        
        for i in num...n {
            group.append(i)
            dfs(num: i, group: group)
            group.removeLast()
        }
    }
    
    for i in 1...n {
        dfs(num: i, group: [i])
    }