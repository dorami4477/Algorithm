    let nm = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = nm[0], m = nm[1]
    var board = [Array<Character>]()
    
    for i in 0..<n {
        board.append(readLine()!.map{ $0 })
    }
    
    func countPainting(board: [Array<Character>]) -> Int {
        var BW = 0
        var WB = 0
        
        for i in 0..<8 {
            for j in 0..<8 {
                if (i + j) % 2 == 0 {
                    if board[i][j] == "B" {
                        WB += 1
                    } else {
                        BW += 1
                    }
                } else {
                    if board[i][j] == "W" {
                        WB += 1
                    } else {
                        BW += 1
                    }
                }
            }
        }
        
        return min(BW, WB)
    }
    
    func makeBoard(x: Int, y: Int) -> [Array<Character>] {
        var result = [Array<Character>]()
        for i in 0..<8 {
            result.append(Array(board[x + i][y..<min(y + 8, m)]))
        }
        
        return result
    }
    
    var painted = 64
    
    for x in 0..<(n-7) {
        for y in 0..<(m-7) {
            let b = makeBoard(x: x, y: y)
            painted = min(painted, countPainting(board: b))
        }
    }
    
    print(painted)