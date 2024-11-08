    let NK = readLine()!.split(separator: " ").map{ Int($0)! }
    let temperature = readLine()!.split(separator: " ").map{ Int($0)! }
    
    var array = Array(repeating: 0, count: NK[0] + 1)
    for i in 0..<NK[0] {
        array[i + 1] = array[i] + temperature[i]
    }
 
    var sumArray: [Int] = []
    for i in 0..<NK[0] {
        if i + NK[1] <= NK[0] {
            let num = array[i + NK[1]] - array[i + 1] + temperature[i]
            sumArray.append(num)
        }
    }
    
    print(sumArray.max()!)