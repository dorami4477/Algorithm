    let words = readLine()!.map { String($0) }
    let n = Int(readLine()!)!

    for _ in 0..<n {
        let coord = readLine()!.split(separator: " ").map{ String($0) }
        let letter = coord[0]
        let start = Int(coord[1])!
        let end = Int(coord[2])!
        var count = 0
        for i in start...end {
            if words[i] == letter {
                count += 1
            }
        }
        print(count)
    }