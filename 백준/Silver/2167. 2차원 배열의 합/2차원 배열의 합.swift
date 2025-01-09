    let nm = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = nm[0], m = nm[1]
    var arr = [[Int](repeating: 0, count: m + 1)]
    for _ in 0..<n {
        arr.append([0] + readLine()!.split(separator: " ").map{ Int( $0)! })
    }
    
    for i in 1...n {
        for j in 1...m {
            arr[i][j] += arr[i - 1][j] + arr[i][j - 1] - arr[i - 1][j - 1]
        }
    }

    let num = Int(readLine()!)!
    for _ in 0..<num {
        let coord = readLine()!.split(separator:  " ").map{ Int($0)! }
        let x1 = coord[0], y1 = coord[1], x2 = coord[2], y2 = coord[3]
        let answer = arr[x2][y2] - arr[x1 - 1][y2] - arr[x2][y1 - 1] + arr[x1 - 1][y1 - 1]
        print(answer)
    }