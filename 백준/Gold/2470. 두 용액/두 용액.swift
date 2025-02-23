    let n = Int(readLine()!)!
    let nums = readLine()!.split(separator: " ").map{ Int($0)! }
    let sortedNums = nums.sorted()
    
    var left = 0
    var right = n - 1
    var standard = 1000000000
    var coord = (0, 0)
    
    var positive = [Int]()
    var negetive = [Int]()
    
    for i in sortedNums {
        if 0 > i {
            positive.append(i)
        } else {
            negetive.append(i)
        }
    }
    
    if sortedNums[0] > 0 {
        //모두양수
        print(sortedNums[0], sortedNums[1])
    } else if sortedNums[n - 1] < 0 {
        //모두음수
        print(sortedNums[n - 2], sortedNums[n - 1])
    } else {
        while left < right {
            if standard >= abs(0 - (sortedNums[left] + sortedNums[right])) {
                standard = abs(0 - (sortedNums[left] + sortedNums[right]))
                coord = (sortedNums[left], sortedNums[right])
            }
            
            if 0 - (sortedNums[left] + sortedNums[right]) > 0 {
                left += 1
            } else {
                right -= 1
            }
        }
        print(coord.0, coord.1)
    }