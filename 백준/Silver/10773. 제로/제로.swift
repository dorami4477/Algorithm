let K = Int(readLine()!)!
var arr: [Int] = []
var answer = 0

for i in 0..<K {
    let num = Int(readLine()!)!
    if num != 0 {
        arr.append(num)
    } else if arr.count != 0 && num == 0 {
        arr.removeLast()
    }
}

arr.forEach {
    answer += $0
}

print(answer)
