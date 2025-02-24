    let string1 = readLine()!.map{ String($0)}
    var string2 = readLine()!.map{ String($0)}
    var flag = false

    for _ in 0..<string2.count {
        if string1 == string2 {
            flag = true
            break
        }
        
        if let letter = string2.popLast() {
            if letter == "B" {
                string2 = string2.reversed()
            }
        }
    }
    
    flag ? print("1") : print("0")