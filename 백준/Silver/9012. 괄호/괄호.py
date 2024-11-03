import sys

input = sys.stdin.readline

# 테스트 케이스의 수
T = int(input())

for _ in range(T):
    # 괄호 문자열 입력
    string = input()

    stack = list()

    # flag 변수
    flag = False

    # 문자열 순회
    for char in string:
        # char가 ( 이냐
        if char == "(":
            # 스택에 저장한다.
            stack.append(char)

        elif char == ")":
            # 스택에 ( 있는지? 없는지?
            if len(stack) != 0 and stack[-1] == "(":
                stack.pop()
            else:
                # 비정상적인 문자열
                flag = True

    if flag == True or len(stack) != 0:
        print("NO")
    else:
        print("YES")