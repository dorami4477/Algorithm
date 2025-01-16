    let testCase = Int(readLine()!)!
    for _ in 0..<testCase {
        let myFunction = Array(readLine()!)
        var _ = Int(readLine()!)!
        let numArray = readLine()!.dropFirst().dropLast().split(separator: ",").map { String($0) }
        var leftArray: [Int] = numArray.compactMap { Int($0) }
        var rightArray:[Int] = leftArray.reversed()
        var whichOne: Bool = false
        
        var leftIndex = 0
        var rightIndex = 0
        var flag = false
    
        for i in myFunction {
            switch i {
            case "R":
                whichOne.toggle()
            default:
                if leftArray.count <= leftIndex && rightArray.count <= rightIndex {
                    flag = true
                    break
                } else {
                    if whichOne {
                        leftArray.removeLast()
                        rightIndex += 1
                    } else {
                        rightArray.removeLast()
                        leftIndex += 1
                    }
                }
            }
        }

        if flag {
            print("error")
        } else if whichOne {
            print("[" + rightArray[rightIndex...].map{ String($0)}.joined(separator: ",") + "]")
        } else {
            print("[" + leftArray[leftIndex...].map{ String($0)}.joined(separator: ",") + "]")
        }
    }