let NM = readLine()!.split(separator: " ").map { Int($0)!}

var arr: Set<String> = []

for i in 0..<NM[0] {
    arr.insert(readLine()!)
}

var answer:Set<String> = []

for i in 0..<NM[1] {
    let name = readLine()!
    if arr.contains(name) {
        answer.insert(name)
    }
}

print(answer.count)
answer.sorted().forEach { name in
    print(name)
}