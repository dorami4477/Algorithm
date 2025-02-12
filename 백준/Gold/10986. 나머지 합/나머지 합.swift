let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0], m = input[1]
let nums = readLine()!.split(separator: " ").map{ Int($0)! }

var accumluateSum = 0
var remainderCount = [Int](repeating: 0, count: m)
remainderCount[0] = 1
var answer = 0
    
for i in 0..<n {
    accumluateSum += nums[i]
    let remainder = accumluateSum % m
    answer += remainderCount[remainder]
    remainderCount[remainder] += 1
}
    
print(answer)