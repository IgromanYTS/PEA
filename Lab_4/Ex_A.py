n = int(input())
array = list(map(int, input().split()))

if n == 1:
    print(array[0])
else:
    res = [0] * n
    res[0] = array[0]
    res[1] = max(array[0], array[1])

    for i in range(2, n):
        res[i] = max(res[i-1], res[i-2] + array[i])

    print(res[n-1])