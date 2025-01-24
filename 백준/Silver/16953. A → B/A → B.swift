    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = input[0]
    var b = input[1]
    
    var bString = String(b)

    func greedy() -> Int {
        var count = 1
        
        while b != a {
            if bString.last! == "1" {
                bString.removeLast()
                if bString.isEmpty {
                    return -1
                }
                b = Int(bString)!
                count += 1
            } else {
                if b % 2 == 1 {
                    return -1
                }
                b /= 2
                bString = String(b)
                count += 1
            }
        }
        
        return count
    }

    print(greedy())