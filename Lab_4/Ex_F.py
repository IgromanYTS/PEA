k, i = map(int, input().split())

dp = [0]*(k+1)
dp[1] = 1
for l in range(2, k+1):
    for j in range(1, i+1):
        if l-j > 0:
            dp[l] += dp[l-j]

print(dp[-1])
