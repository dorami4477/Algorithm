    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = input[0], s = input[1]
    let nums = readLine()!.split(separator: " ").map{ Int($0)! }    
    var count = 0

    func dfs(sum: Int, length: Int, now: Int) {
         var sum = sum
        if sum == s && length > 0 {
            count += 1
        }

        for i in now..<n {
            sum += nums[i]
            dfs(sum: sum, length: length + 1, now: i + 1)
            sum -= nums[i]
        }
    }

    dfs(sum: 0, length: 0, now: 0)
    print(count)