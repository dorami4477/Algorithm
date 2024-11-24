    let _ = Int(readLine()!)!
    let queue = readLine()!.split(separator: " ").map{ Int($0)! }
    
    var currentOrder = 1
    var stack = [Int]()
    
    for i in queue {
        stack.append(i)
        
        while stack.last == currentOrder {
            stack.removeLast()
            currentOrder += 1
        }
    }
    
    currentOrder == queue.count + 1 ? print("Nice") : print("Sad")