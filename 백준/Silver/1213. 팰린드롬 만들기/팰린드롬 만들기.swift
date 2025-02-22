    let letter = readLine()!
    var dict: [String: Int] = [:]
    for i in letter {
        if dict[String(i)] != nil {
            dict[String(i)]! += 1
        } else {
            dict[String(i)] = 1
        }
    }
    
    var word1 = ""
    var word2 = ""
    var mid = ""
    var oddNnm = 0
    
    for i in dict.keys.sorted() {
        if dict[i]! % 2 == 1 {
            oddNnm += 1
            mid = i
            dict[i]! -= 1
        }
        
        if oddNnm > 1 {
            break
        }
        
        while dict[i]! % 2 == 0 && dict[i]! != 0 {
                word1 += i
                word2 += i
            dict[i]! -= 2
        }
    }
    
    if oddNnm > 1 {
        print("I'm Sorry Hansoo")
    } else {
        print("\(word1)\(mid)\(String(word2.reversed()))")
    }