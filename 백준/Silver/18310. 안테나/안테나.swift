let n = Int(readLine()!)!
let house = readLine()!.split(separator: " ").map{ Int($0)! }.sorted(by: <)

let minV = 0
let maxV = n

if n % 2 == 0 {
    let mid = (minV + maxV - 1) / 2
    print(house[mid])
} else {
    let mid = (minV + maxV) / 2
    print(house[mid])
}