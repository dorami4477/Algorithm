    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = input[0], h = input[1]
    var stalagmites = [Int](repeating:0, count: h)
    for i in 0..<n {
       let num = Int(readLine()!)!
        
        if i % 2 == 0 {
            stalagmites[0] += 1
            stalagmites[num] -= 1
        } else {
            stalagmites[h - num] += 1
        }
    }

    for i in 1..<h {
        stalagmites[i] += stalagmites[i-1]
    }

    let min = stalagmites.min()!
    var count = 0
    
    for i in stalagmites {
        if i == min {
            count += 1
        }
    }
    
    print(min, count)