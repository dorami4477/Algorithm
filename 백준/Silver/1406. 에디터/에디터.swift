    var left = Array(readLine()!)
    var right = [Character]()
    let n = Int(readLine()!)!
    
    for _ in 0..<n {
        let order = readLine()!
        switch order {
        case "L":
            if !left.isEmpty {
                right.append(left.popLast()!)
            }
        case "D":
            if !right.isEmpty {
                left.append(right.popLast()!)
            }
        case "B":
            if !left.isEmpty {
                left.removeLast()
            }
        default:
            left.append(order.last!)
        }
    }
    
    print(String(left + right.reversed()))