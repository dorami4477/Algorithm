struct Deque<T: Equatable> {
    var enqueue: [T] = []
    var dequeue: [T] = []
    var enIndex = 0
    var deIndex = 0
    
    var size: Int {
        return enqueue.count + dequeue.count - ( enIndex + deIndex )
    }
    
    var isEmpty: Bool {
        let size = enqueue.count + dequeue.count - ( enIndex + deIndex )
        return size > 0 ? false : true
    }
    
    var front: T? {
        if isEmpty {
            return nil
        }
        
        if enqueue.count <= enIndex {
            return dequeue[deIndex]
        }
        return enqueue.last
    }
    
    var back: T? {
        if isEmpty {
            return nil
        }
        
        if dequeue.count <= deIndex {
            return enqueue[enIndex]
        }
        
        return dequeue.last
    }
    
    mutating func pushFront(_ n: T) {
        enqueue.append(n)
    }
    
    mutating func pushBack(_ n: T) {
        dequeue.append(n)
    }
    
    mutating func popFront() -> T? {
        if isEmpty {
            return nil
        }
        var front: T?
        
        if enqueue.count <= enIndex {
            front = dequeue[deIndex]
            deIndex += 1
        } else {
            front = enqueue.popLast()
        }
        
        return front
    }
    
    mutating func popBack() -> T? {
        if isEmpty {
            return nil
        }
        var back: T?
        
        if dequeue.count <= deIndex {
            back = enqueue[enIndex]
            enIndex += 1
        } else {
            back = dequeue.popLast()
        }
        
        return back
    }
}

let n = Int(readLine()!)!
var deque = Deque<Int>()

for _ in 0..<n {
    let order = readLine()!.split(separator: " ").map{ String($0) }
    if order[0] == "push_front" {
        deque.pushFront(Int(order[1])!)
    } else if order[0] == "push_back" {
        deque.pushBack(Int(order[1])!)
    } else if order[0] == "pop_front" {
        if let popFront = deque.popFront() {
            print(popFront)
        } else {
            print(-1)
        }
    } else if order[0] == "pop_back" {
        if let popBack = deque.popBack() {
            print(popBack)
        } else {
            print(-1)
        }
    } else if order[0] == "size" {
        print(deque.size)
    } else if order[0] == "empty" {
        if deque.isEmpty {
            print(1)
        } else {
            print(0)
        }
    } else if order[0] == "front" {
        if let front = deque.front {
            print(front)
        } else {
            print(-1)
        }
    } else if order[0] == "back" {
        if let back = deque.back {
            print(back)
        } else {
            print(-1)
        }
    }
}


