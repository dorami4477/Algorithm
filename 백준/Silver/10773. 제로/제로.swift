let K = Int(readLine()!)!
var arr: [Int] = []

for i in 0..<K {
    let num = Int(readLine()!)!
    if num != 0 {
        arr.append(num)
    } else if arr.count != 0 && num == 0 {
        arr.removeLast()
    }
}

let answer = arr.reduce(0, +)

print(answer)
