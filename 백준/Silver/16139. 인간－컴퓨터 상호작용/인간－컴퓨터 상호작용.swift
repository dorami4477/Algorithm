    let words = readLine()!.map { String($0) }
    let n = Int(readLine()!)!
    var stringMap = [["a": 0]]
    
    for i in 1...words.count {
        stringMap.append(stringMap[i - 1])
        if stringMap[i][words[i - 1]] != nil {
            stringMap[i][words[i - 1]]! += 1
        } else {
            stringMap[i][words[i - 1]] = 1
        }
    }

    for _ in 0..<n {
        let coord = readLine()!.split(separator: " ").map{ String($0) }
        let letter = coord[0]
        let start = Int(coord[1])!
        let end = Int(coord[2])!
        
        var count = (stringMap[end + 1][letter] ?? 0) - (stringMap[start + 1][letter] ?? 0)
        if words[start] == letter {
            count += 1
        }
        
        if count > 0 {
            print(count)
        }else {
            print(0)
        }
    }