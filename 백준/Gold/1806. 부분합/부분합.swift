    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], s = input[1]
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    var accumulate = [Int](repeating: 0, count: n + 1)
    var start = n
    
    for i in 1...n {
        accumulate[i] = accumulate[i - 1] + nums[i - 1]
        if accumulate[i] >= s {
            start = min(start, i)
        }
    }

    var answer = n
    var flag = false
    var j = 0
    
    for i in start...n {
        while j < i && accumulate[i] - accumulate[j] >= s {
            answer = min(answer, i - j)
            j += 1
            flag = true
        }
    }
    
    flag ? print(answer) : print(0)