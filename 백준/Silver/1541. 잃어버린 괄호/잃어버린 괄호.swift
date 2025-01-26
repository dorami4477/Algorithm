    let input = readLine()!
    var nums = [String]()
    var n = ""
    
    for char in input {
        if char == "+" || char == "-" {
            nums.append(n)
            n = ""
            nums.append(String(char))
        } else {
            n += String(char)
        }
    }
    
    nums.append(n)
    
    var num1 = 0
    var num2 = 0
    var whichOne = true
    
    for i in nums {
        if Int(i) != nil {
            if whichOne {
                num1 += Int(i)!
            } else {
                num2 += Int(i)!
            }
        } else if i == "-" {
            if whichOne {
                whichOne = false
            }
        }
    }
    
    print(num1 - num2)