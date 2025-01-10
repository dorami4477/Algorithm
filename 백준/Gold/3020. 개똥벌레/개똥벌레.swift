    let nh = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = nh[0], h = nh[1]
    var arr = [Int](repeating: 0, count: h)
    var sum = [Int](repeating: 0, count: h)
    
    for i in 0..<n {
        let n = Int(readLine()!)!
        if i % 2 == 0 {
            arr[0] += 1
            arr[n] -= 1
        } else {
            arr[h - n] += 1
        }
    }
    
    sum[0] = arr[0]
    for i in 1..<h {
        sum[i] = sum[i - 1] + arr[i]
    }
    
    let min = sum.min()!
    var count = 0
    
    sum.forEach{
        if $0 == min { count += 1 }
    }
    
    print(min, count)
