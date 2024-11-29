    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    var arr = readLine()!.split(separator: " ").map{ Int($0)! }
    let _ = input[0]
    var l = input[1]
    
    arr.sort()
    
    for i in arr {
        if i <= l {
            l += 1
        }
    }
    
    print(l)