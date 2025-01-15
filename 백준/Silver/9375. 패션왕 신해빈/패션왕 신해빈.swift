    let testCase = Int(readLine()!)!

    for _ in 0..<testCase {
        let n = Int(readLine()!)!
        var clothes = [String: Int]()
        for _ in 0..<n {
            let cloth = readLine()!.split(separator: " ").map{ String($0) }
            if let _ = clothes[cloth[1]] {
                clothes[cloth[1]]! += 1
            } else {
                clothes[cloth[1]] = 1
            }
        }

        var result = 1
        for (_, value) in clothes {
            result *= value + 1
        }
        print(result - 1)
    }