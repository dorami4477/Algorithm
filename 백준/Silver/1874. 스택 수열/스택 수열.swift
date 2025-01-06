    let n = Int(readLine()!)!
    var nums = Array(1...n)
    nums.reverse()
    var sequence = [Int]()
    for _ in 0..<n {
        sequence.append(Int(readLine()!)!)
    }

    var stack1 = [Int]()
    var stack2 = [Int]()
    
    var idx = 0
    var answer = [String]()
    
    while !nums.isEmpty {
        let lastNum = nums.popLast()
        stack1.append(lastNum!)
        answer.append("+")

        while !stack1.isEmpty {
            let stack1Last = stack1.last!
            if stack1Last == sequence[idx] {
                idx += 1
                stack2.append(stack1Last)
                stack1.removeLast()
                answer.append("-")
            } else {
                break
            }
        }
    }
    
    if sequence == stack2 {
        answer.forEach{
            print($0)
        }
    } else {
        print("NO")
    }