    var endCondition = false
    
    while !endCondition {
        let line = readLine()!
        if line == "." {
            endCondition = true
            break
        }
        
        var bracket = [Character]()
        
        for i in line {
            if i == "(" || i == "[" {
                bracket.append(i)
            } else if i == ")" {
                if bracket.last == "(" {
                    bracket.removeLast()
                } else {
                    bracket.append(i)
                }
            } else if i == "]" {
                if bracket.last == "[" {
                    bracket.removeLast()
                } else {
                    bracket.append(i)
                }
            }
        }
        
        bracket.isEmpty ? print("yes") : print("no")
    }