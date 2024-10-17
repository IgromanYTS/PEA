import sys
sys.stdin = open('input.txt', 'r')
array = list(map(int, input().split()))
bigArray = []

line = array[0]
column = array[1]

for _ in range(line):
     bigArray.append(list(map(int, input().split())))

dp = [[-float('inf')] * column for _ in range(line)]

for j in range(0, column-1):
    dp[0][j] = bigArray[0][j]

for i in range(1, line):
     for k in range(column):
          #dp[i][k] = bigArray[i][k]
          max_prev = dp[i-1][k]

          if k > 0:
               max_prev = max(max_prev, dp[i-1][k-1])
          if k < column - 1:
               max_prev = max(max_prev, dp[i-1][k+1])

          dp[i][k] = bigArray[i][k] + max_prev

print(max(dp[-1]))