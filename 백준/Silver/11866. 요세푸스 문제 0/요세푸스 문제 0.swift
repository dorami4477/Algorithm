    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = input[0], k = input[1]
    var pointer = k - 1
    var arr:[Int?] = Array(stride(from: 1, to: n + 1, by: 1))
    var answer = [Int]()
    
    while answer.count < n {
        for i in (pointer - (k-1))..<pointer {
            arr.append(arr[i])
        }
        
        answer.append(arr[pointer]!)
        arr[pointer] = nil
        pointer += k
    }
    
    print("<" + answer.map{String($0)}.joined(separator: ", ") + ">")