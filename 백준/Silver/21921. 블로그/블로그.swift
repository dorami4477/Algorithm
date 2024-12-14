    let nx = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = nx[0], x = nx[1]
    let arr = readLine()!.split(separator: " ").map{ Int($0)! }
    var visitedSum = [Int](repeating: 0, count: n + 1)
    var sum = [Int]()
    for i in 0..<n {
        visitedSum[i + 1] = arr[i] + visitedSum[i]
    }
    
    for i in stride(from: n, to:0, by: -1) {
        if i - (x - 1) - 1 >= 0 {
            let num = visitedSum[i] - visitedSum[i - (x - 1)] + arr[i - (x - 1) - 1]
            sum.append(num)
        }
    }

    let maxNum = sum.max()!
    if maxNum == 0 {
        print("SAD")
    } else {
        print(maxNum)
        print(sum.filter{ $0 == maxNum }.count)
    }