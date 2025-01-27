    let n = Int(readLine()!)!
    var meeting = [(Int, Int)]()
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{ Int($0)! }
        meeting.append((input[0], input[1]))
    }
    
    meeting.sort {
        $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1
    }

    var sample = (0 , 0)
    var count = 0
        
        for i in 0..<n {
            if sample.1 <= meeting[i].0 {
                sample = meeting[i]
                count += 1
            }
        }

    print(count)