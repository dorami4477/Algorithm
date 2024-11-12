#파일입력
import sys

#dfs 함수
#y, x는 노드
#count는 노드의 수
def dfs(y, x):
    #변수의 재할당을 위한 global 키워드
    global count 
    #count + 1 -> 새로운 수를 생성
    #count = count + 1 -> 재할당
    count = count + 1

    dy = [-1, 1, 0, 0]
    dx = [0, 0, -1, 1]

    for d in range(4):
        next_y = y + dy[d]
        next_x = x + dx[d]

        #항상 먼저 범위 조건
        if 0 <= next_y < N and 0 <= next_x < N:
            #값 조건
            if matrix[next_y][next_x] == 1:
                #방문 조건
                if (next_y, next_x) not in visited:
                    #방문 처리
                    visited.add((next_y, next_x))
                    dfs(next_y, next_x)
#행렬 N X N 
#가로 세로가 동일하다. 
N = int(input())

#행렬입력
matrix = []
for _ in range(N):
    temp = list(map(int, list(input())))
    matrix.append(temp)

#방문 처리 변수 
visited = set()

#단지 내부 집의 수 저장 변수
answer = []

#시작 좌표 반복문
for y in range(N):
    for x in range(N):
        #시작 좌표가 될 수 있는 조건
        #1. 값이 1
        #2. 방문 x
        if matrix[y][x] == 1 and (y,x) not in visited:
            #dfs 시작
            visited.add((y, x))
            count = 0
            dfs(y, x)
            
            answer.append(count)

#결과 출력
print(len(answer))
answer = sorted(answer)
for a in answer:
    print(a)