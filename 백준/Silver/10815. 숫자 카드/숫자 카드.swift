    let N = Int(readLine()!)!
    let card = readLine()!.split(separator: " ").map{ Int($0)! }
    let M = Int(readLine()!)!
    let find = readLine()!.split(separator: " ").map{ Int($0)! }
    
    var answer = [Int]()
    var dict = [Int: Int]()
    
    for i in card {
        dict[i] = i
    }
    
    for i in find {
        if let n = dict[i] {
            answer.append(1)
        } else {
            answer.append(0)
        }
    }
    
    print(answer.map{String($0)}.joined(separator: " "))