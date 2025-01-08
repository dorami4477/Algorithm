    let n = Int(readLine()!)!
    let seq = readLine()!.split(separator: " ").map{ Int($0)! }
    let m = Int(readLine()!)!
    var section = [(Int, Int)]()
    var accuSum = [Int](repeating: 0, count: n + 1)
    
    for _ in 0..<m {
        let m = readLine()!.split(separator: " ").map{ Int($0)! }
        section.append((m[0], m[1]))
    }
    
    for i in 0..<n {
        accuSum[i + 1] = accuSum[i] + seq[i]
    }
    
    for i in section {
        let sum = accuSum[i.1] - accuSum[i.0] + seq[i.0 - 1]
        print(sum)
    }