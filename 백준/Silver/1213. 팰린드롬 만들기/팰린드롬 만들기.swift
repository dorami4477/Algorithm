    let name = readLine()!
    var dict = [Character: Int]()
    
    for i in name {
        if dict.keys.contains(i) {
            dict[i]! += 1
        } else {
            dict[i] = 1
        }
    }
    
    func findAnswer() -> String {
        var section = ""
        var center = ""
        var oddNumberCount = 0
        
        for (key, value) in dict.sorted(by: { $0.key < $1.key }) {
            if value % 2 == 1 {
                center += String(key)
                oddNumberCount += 1
                if oddNumberCount > 1 {
                    return "I'm Sorry Hansoo"
                }
            }
            section += String(repeating: String(key), count: value / 2)
            
        }
        let reversedSection = section.reversed()
        return (section + center + String(reversedSection))
    }
    
    print(findAnswer())