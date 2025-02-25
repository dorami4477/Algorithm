    let n = Int(readLine()!)!
    var dict = [Int: String]()
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ")
        if dict[Int(input[0])!] != nil {
            dict[Int(input[0])!]! += " " + String(input[1])
        } else {
            dict[Int(input[0])!] = String(input[1])
        }
    }
    
    for i in dict.keys.sorted() {
        let arr = dict[i]!.split(separator: " ")
        for j in 0..<arr.count {
            print(i, arr[j])
        }
    }