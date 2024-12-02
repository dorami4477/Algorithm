    let input = Int(readLine()!)!
    var queue = Array<Int>(1...input)
    var pointer = 0
    var answer = [Int]()
    
    while pointer < queue.count - 1 {
        answer.append(queue[pointer])
        pointer += 1
        queue.append(queue[pointer])
        pointer += 1
    }
    
    answer.append(queue[pointer])
    print(answer.map{ String($0) }.joined(separator: " "))