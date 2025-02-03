    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let e = input[0], s = input[1], m = input[2]
    
    var year = 1
    while true {
        if (year - e) % 15 == 0, (year - s) % 28 == 0, (year - m) % 19 == 0 {
            print(year)
            break
        }
        year += 1
    }