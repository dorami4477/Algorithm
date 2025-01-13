    let _ = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map{ Int($0)! }
    let sum = Int(readLine()!)!
    
    var map = [Bool](repeating: false, count: 2000000)
    for i in arr {
        map[i] = true
    }
    
    var count = 0
    
    for i in arr {
        let differance = sum - i
        if differance > 0, map[differance] {
            count += 1
        }
    }
    
    print(count / 2)