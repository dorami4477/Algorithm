let N = Int(readLine()!)!
var card:[Int] = []
var front = 0

for i in 1...N {
    card.append(i)
}

while card.count - front > 1{
    front += 1
    card.append(card[front])
    front += 1
}

print(card[front])