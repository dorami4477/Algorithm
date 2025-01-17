    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nm[0], m = nm[1]
    
    if m == 2 {
        for i in 0..<n - 1 {
            print(i, i + 1)
        }
    } else {
        print("0 1")
        for i in 2...m {
            print(1, i)
        }
        for j in m..<n - 1 {
            print(j, j + 1)
        }
    }