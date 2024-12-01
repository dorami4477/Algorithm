    let n = Int(readLine()!)!
    
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{ Int($0)! }
        let amount = input[0], m = input[1]
        var arr = readLine()!.split(separator: " ").map{ Int($0)! }
        var queue = [(Int, Int)]()
        
        arr.enumerated().forEach { index, value in
            queue.append((value, index))
        }

        let sortedArr = arr.sorted(by: >)
        var pointer = 0
        var pointer2 = 0
 
        while pointer <= amount - 1 {
            
            if queue[pointer2].0 != sortedArr[pointer] {
                queue.append(queue[pointer2])
                pointer2 += 1
            } else {
                if queue[pointer2].1 == m {
                    print(pointer + 1)
                }
                pointer += 1
                pointer2 += 1
            }
        }
    }