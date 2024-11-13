    let n = Int(readLine()!)!
    var arr = readLine()!.split(separator: " ").map{ Int($0)! }

    var sum = 0
    arr.sort { $0 > $1 }
    for i in 1...n - 1{
        sum += arr[0] + arr[i]
    }

    print(sum)