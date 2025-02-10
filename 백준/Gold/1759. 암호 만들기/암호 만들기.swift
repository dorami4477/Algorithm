    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let letter = readLine()!.split(separator: " ").map{ String($0) }.sorted(by: <)
    let visited = [Bool](repeating:false, count: input[1])
    let vowel = ["a", "e", "i", "o", "u"]
    var queue = [String]()
    
    func dfs(n: Int, visit: [Bool]) {
        var visited = visit

        if queue.count == input[0] {
            var hasVowel = false
            var count = input[0]
            for i in queue {
                if vowel.contains(i) {
                    count -= 1
                    hasVowel = true
                }
            }
            
            if count >= 2 && hasVowel {
                print(queue.joined())
            }
        }
        
        for i in n..<input[1] {
            if !visited[i] {
                queue.append(letter[i])
                visited[i] = true
                dfs(n: i, visit: visited)
                queue.removeLast()
                visited[i] = false
            }
        }
    }
    
    dfs(n: 0, visit: visited)