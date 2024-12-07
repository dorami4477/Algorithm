    let n = Int(readLine()!)!
    let light = readLine()!.split(separator: " ")
    var boolLight = [Bool]()
    
    light.forEach {
        if $0 == "0" {
            boolLight.append(false)
        } else {
            boolLight.append(true)
        }
    }

    var origin = [Bool](repeating: false, count: n)
    var answer = 0
    
    while origin != boolLight {
        for i in 0..<n {
            if origin[i] != boolLight[i] {
                if i < n - 2 {
                    origin[i].toggle()
                    origin[i + 1].toggle()
                    origin[i + 2].toggle()
                    answer += 1
                    
                } else if i == n - 2 {
                    origin[i].toggle()
                    origin[i + 1].toggle()
                    answer += 1
                    
                } else if i == n - 1 {
                    origin[i].toggle()
                    answer += 1
                }
            }
        }
    }
    print(answer)