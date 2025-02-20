    let nCount = Int(readLine()!)!
    let nums = readLine()!.split(separator: " ").map{ Int($0)! }
    var operatorCount = readLine()!.split(separator: " ").map{ Int($0)! }
    var opOrder: [[Int]] = []
    var answer = [Int]()
    
    func dfs(operatorCount: [Int], group: [Int]) {
        var operatorCount = operatorCount
        var opGroup = group
        
        if opGroup.count == nCount - 1 {
            opOrder.append(opGroup)
            return
        }
        
        for i in 0..<4 {
            if operatorCount[i] > 0 {
                operatorCount[i] -= 1
                opGroup.append(i)
                dfs(operatorCount: operatorCount, group: opGroup)
                opGroup.removeLast()
                operatorCount[i] += 1
            }
        }
    }
    
    func computed(a: Int, b: Int, op: Int) -> Int {
        if op == 0 {
            return a + b
        } else if op == 1 {
            return a - b
        } else if op == 2 {
            return a * b
        } else {
            return a / b
        }
    }
    
    dfs(operatorCount: operatorCount, group: [])
    
    for i in 0..<opOrder.count {
        var temSum = nums[0]
        for j in 0..<nCount - 1 {
            temSum = computed(a: temSum, b: nums[j + 1], op: opOrder[i][j])
        }
        
        answer.append(temSum)
    }
    
    print(answer.max()!)
    print(answer.min()!)