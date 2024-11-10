
    let _ = Int(readLine()!)!
    var aAarray = readLine()!.split(separator: " ").map { Int($0)! }
    let _ = Int(readLine()!)!
    let mAarray = readLine()!.split(separator: " ").map { Int($0)! }
    
    aAarray.sort()
    mAarray.forEach {
        let num = findNum(target: $0, array: aAarray)
        print(num)
    }


func findNum(target: Int, array: [Int]) -> Int {
    var front = 0
    var end = array.count - 1
    var mid = (front + end) / 2

    while front <= end {
        if target == array[mid] {
            return 1
        } else if target < array[mid] {
            end = mid - 1
            mid = (front + end) / 2
        } else if target > array[mid] {
            front = mid + 1
            mid = (front + end) / 2
        }
    }
    return 0
}