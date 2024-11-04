let T = Int(readLine()!)!

for i in 0..<T {
    var arr: [Character] = []
    let ps = readLine()!

    for s in ps {
        if arr.count == 0 || s == "(" {
            arr.append(s)
        } else if arr.last! == "(" && s == ")" {
            arr.removeLast()
        }
    }

    print(arr.isEmpty ? "YES" : "NO")
}
