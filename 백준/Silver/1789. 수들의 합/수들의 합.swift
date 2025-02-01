    let n = Int(readLine()!)!
    
    var sum = 0
    var i = 1
    
    while sum < n {
        sum += i
        i += 1
    }
    
    if sum == n {
        print(i - 1)
    } else {
        print(i - 2)
    }