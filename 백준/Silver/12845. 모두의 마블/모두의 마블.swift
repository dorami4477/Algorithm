    let n = Int(readLine()!)!
    var arr = readLine()!.split(separator: " ").map{ Int($0)! }
    
   let sum = arr.reduce(0, +)
   let answer = (sum - arr.max()!) + arr.max()! * (n - 1)
    print(answer)