    let n = Int(readLine()!)!
    var aArray = readLine()!.split(separator: " ").map{ Int($0)!}
    var bArray = readLine()!.split(separator: " ").map{ Int($0)!}
    
    aArray.sort()
    bArray.sort(by: >)
    
    var sum = 0
    
    for i in 0..<n {
        sum += aArray[i] * bArray[i]
    }
    
    print(sum)