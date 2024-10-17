from collections import deque
q = deque()

directions = [(0,1), (1,0), (0, -1), (-1,0)]

array = list(map(int, input().split()))
bigArray = []

line = array[0]
column = array[1]

for _ in range(line):
     bigArray.append(list(map(int, input().split())))

dp = [[float('inf')] * column for _ in range(line)]
dp[0][0] = bigArray[0][0]


q.append((bigArray[0][0], 0, 0))

while q: 
    currentCost, i, j = q.popleft()
    for dir in directions: 
         newI = i + dir[0]
         newJ = j + dir[1]

         if newI >= 0 and newI < line and newJ >= 0 and newJ < column:
               newCost = currentCost + bigArray[newI][newJ]

               if newCost < dp[newI][newJ]:
                    dp[newI][newJ] = newCost
                    q.append((newCost, newI, newJ))

         

     

#print(dp)
print(dp[line-1][column-1])