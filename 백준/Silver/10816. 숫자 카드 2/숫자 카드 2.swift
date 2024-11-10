    let _ = Int(readLine()!)!
    var Anums = readLine()!.split(separator: " ").map{ Int($0)! }
    let _ = Int(readLine()!)!
    let Bnums = readLine()!.split(separator: " ").map{ Int($0)! }
    
    var dict = [Int: Int]()
    var result = [Int]()
    
    Anums.sort()
    
    for i in Anums {
        if dict.keys.contains(i) {
            dict[i]! += 1
        } else {
            dict[i] = 1
        }
    }
    
    Bnums.forEach {
        dict.keys.contains($0) ? print(dict[$0]!) : print(0)
    }