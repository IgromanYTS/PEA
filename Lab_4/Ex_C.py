n = int(input())
array = list(map(int, input().split()))

if n == 1:
    print(array[0])
else:
    res = [0] * n
    res[0] = array[0]
    res[1] = abs(array[1] - array[0])
    #print(res)

    for i in range(2, n):
        res[i] = min(res[i-1] + abs(array[i] - array[i-1]), res[i-2] + abs(array[i] - array[i-2]))
        
    print(res[n-1])