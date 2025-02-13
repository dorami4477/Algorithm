    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = input[0], m = input[1], k = input[2]
    var board = [[String]]()
    
    for _ in 0..<n {
        board.append(readLine()!.map{ String($0)})
    }
    
    var BWB = [[Int]](repeating: [Int](repeating: 0, count: m + 1), count: n + 1)
    var WBW = [[Int]](repeating: [Int](repeating: 0, count: m + 1), count: n + 1)

    for i in 0..<n {
        for j in 0..<m {
            if i % 2 == 1 && j % 2 == 0 || i % 2 == 0 && j % 2 == 1 {
                if board[i][j] == "B" {
                    BWB[i + 1][j + 1] = BWB[i + 1][j] + BWB[i][j + 1] - BWB[i][j] + 1
                    WBW[i + 1][j + 1] = WBW[i + 1][j] + WBW[i][j + 1] - WBW[i][j]
                } else if board[i][j] == "W" {
                    WBW[i + 1][j + 1] = WBW[i + 1][j] + WBW[i][j + 1] - WBW[i][j] + 1
                    BWB[i + 1][j + 1] = BWB[i + 1][j] + BWB[i][j + 1] - BWB[i][j]
                }
            } else {
                if board[i][j] == "B" {
                    WBW[i + 1][j + 1] = WBW[i + 1][j] + WBW[i][j + 1] - WBW[i][j] + 1
                    BWB[i + 1][j + 1] = BWB[i + 1][j] + BWB[i][j + 1] - BWB[i][j]
                } else if board[i][j] == "W" {
                    BWB[i + 1][j + 1] = BWB[i + 1][j] + BWB[i][j + 1] - BWB[i][j] + 1
                    WBW[i + 1][j + 1] = WBW[i + 1][j] + WBW[i][j + 1] - WBW[i][j]
                }
            }
            
        }
    }

    var BWBMin = n * m
    var WBWMin = n * m

    for startY in 1...(n - k + 1) {
        for startX in 1...(m - k + 1) {
            let endX = startX + k - 1
            let endY = startY + k - 1

            let b = BWB[endY][endX] - BWB[startY - 1][endX] - BWB[endY][startX - 1] + BWB[startY - 1][startX - 1]
            BWBMin = min(BWBMin, b)

            let w = WBW[endY][endX] - WBW[startY - 1][endX] - WBW[endY][startX - 1] + WBW[startY - 1][startX - 1]
            WBWMin = min(WBWMin, w)
        }
    }
    
    print(min(BWBMin, WBWMin))