    let line = readLine()!
    var result = ""
    var mainWord = ""
    var tag = false
    
    for i in line {
        if i == "<" {
            if !mainWord.isEmpty {
                result += mainWord.reversed()
            }
            mainWord = ""
            tag = true
            result += String(i)
            
        } else if i == ">" {
            tag = false
            result += String(i)
            
        } else if tag {
            result += String(i)
            
        } else if i == " " {
            if !mainWord.isEmpty {
                result += mainWord.reversed()
            }
            mainWord = ""
            result += String(i)
            
        } else {
            mainWord += String(i)
        }
    }
    
    if !mainWord.isEmpty {
        result += mainWord.reversed()
    }
    print(result)