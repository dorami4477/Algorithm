    let n = Int(readLine()!)!
    var stack = [Int]()
    
    for _ in 0..<n {
        let commend = readLine()!.split(separator: " ")
        let order = Commends(rawValue: String(commend[0]))
        
        switch order {
        case .push:
            stack.append(Int(commend[1])!)
        case .pop:
            if stack.count == 0 {
                print("-1")
            } else {
                print(stack.removeLast())
            }
        case .size:
            print(stack.count)
        case .empty:
            print(stack.isEmpty ? "1" : "0")
        case .top:
            if let lastElement = stack.last {
                print(lastElement)
            } else {
                print("-1")
            }
        case .none:
            print("")
        }
    }
    
    enum Commends: String {
        case push
        case pop
        case size
        case empty
        case top
    }