    let word = readLine()!.map{ String($0) }
    var wordSet: Set<String> = []
    var temp = ""
    
    for i in 0..<word.count {
        for j in i..<word.count {
            temp += word[j]
            wordSet.insert(temp)
        }
        
        temp = ""
    }
    
    print(wordSet.count)