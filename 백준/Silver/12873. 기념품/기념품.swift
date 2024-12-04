    let n = Int(readLine()!)!
    var arr = Array(1...n)
    var t = 1
    var pointer = 0
    
    while arr.count > 1 {
        let num = t * t * t
        let index = (pointer + num) % arr.count
        
        if index == 0 {
            arr.removeLast()
            pointer = 0
        } else {
            arr.remove(at: index - 1)
            pointer = index - 1
        }
        
        t += 1
    }
    
    print(arr[0])