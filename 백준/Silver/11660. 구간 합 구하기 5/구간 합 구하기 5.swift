    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = input[0], m = input[1]
    
    var arr = [[Int](repeating: 0, count: n + 1)]
    for _ in 0..<n {
        arr.append([0] + readLine()!.split(separator: " ").map{ Int($0)! })
    }

    for y in 1...n {
        for x in 1...n {
            arr[y][x] += arr[y - 1][x] + arr[y][x - 1] - arr[y - 1][x - 1]
        }
    }
    
    for _ in 0..<m {
        let coord = readLine()!.split(separator: " ").map{ Int($0)! }
        let y1 = coord[0], x1 = coord[1], y2 = coord[2], x2 = coord[3]

        let sum = arr[y2][x2] - arr[y1 - 1][x2] - arr[y2][x1 - 1] + arr[y1 - 1][x1 - 1]
        print(sum)
    }