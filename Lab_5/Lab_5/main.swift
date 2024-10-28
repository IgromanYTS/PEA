//
//  main.swift
//  Lab_5
//
//  Created by Yura B on 25.10.2024.
//

import Foundation



//MARK: LAB A
////Input
//
//if let firstLine = readLine() {
//    let array = firstLine.split(separator: " ").compactMap{Int($0)}
//    let (N, M) = (array[0], array[1])
//    
//    //Initialize graph
//    var graphList = [[Int]](repeating: [], count: N+1)
//    for _ in 0..<M {
//        let input = readLine()?.split(separator: " ").compactMap{Int($0)}
//        let (i,j) = (input![0], input![1])
//        graphList[i].append(j)
//        graphList[j].append(i)
//    }
//    
//    var visit = [Bool](repeating: false, count: N+1)
//    var components = [[Int]]()
//    
//    //dfs function
//    func dfs(_ node: Int, _ component: inout [Int]) {
//        visit[node] = true
//        component.append(node)
//        for neighbor in graphList[node] {
//            if !visit[neighbor] {
//                dfs(neighbor, &component)
//            }
//        }
//    }
//        
//        //component vertex
//    for vertex in 1...N {
//        if !visit[vertex] {
//            var component = [Int]()
//            dfs(vertex, &component)
//            components.append(component)
//        }
//    }
//        print(components.count)
//        for component in components {
//            print(component.count)
//            print(component.map{String($0)}.joined(separator: " "))
//        }
//    
//}
//

//MARK: LAB C
let MAX = 101
var g = Array(repeating: Array(repeating: 0, count: MAX), count: MAX)
var used = Array(repeating: false, count: MAX)

func dfs(_ v: Int, n : Int) {
    used[v] = true
    for i in 1...n {
        if g[v][i] == 1 && !used[i] {
            print("\(v) \(i)")
            dfs(i, n: n)
        }
    }
}
if let input = readLine() {
    let nm = input.split(separator: " ").compactMap{Int($0)}
    let (n, m) = (nm[0], nm[1])
    
    for _ in 0..<m {
        if let line = readLine() {
            let ab = line.split(separator: " ").compactMap{Int($0)}
            let (a, b) = (ab[0], ab[1])
            g[a][b] = 1
            g[b][a] = 1
        }
    }
    dfs(1, n: n)
}

//AFTER THAT I CAN'T DO MY TASK :(

//MARK: LAB B(JAVA)
//import java.util.*;
////import java.io.*;
// 
//public class Main
//{
//  static int n, x;
//  static int g[][];
//  static int dist[];
// 
//  static void dfs(int start)
//  {
//    dist[start] = 0;
//    Queue<Integer> q = new LinkedList<Integer>();
//    q.add(start);
// 
//    while(!q.isEmpty())
//    {
//      int v = q.poll();
//      for(int to = 1; to <= n; to++)
//        if ((g[v][to] == 1) && (dist[to] == -1))
//        {
//          q.add(to);
//          dist[to] = dist[v] + 1;
//        }
//    }
//  }
// 
//  public static void main(String[] args)  // throws IOException
//  {
//    //Scanner con = new Scanner(new FileReader ("4852.in"));
//     Scanner con = new Scanner(System.in);
//    n = con.nextInt();
//    x = con.nextInt();
//    g = new int[n+1][n+1];
//    dist = new int[n+1];
//    Arrays.fill(dist, -1);
//   
//    for(int i = 1; i <= n; i++)
//    for(int j = 1; j <= n; j++)
//      g[i][j] = con.nextInt();
//   
//    dfs(x);
//   
//    for(int i = 1; i <= n; i++)
//      System.out.print(dist[i] + " ");
//    System.out.println();
//    con.close();
//  }
//}

//MARK: LAB D (c++)
//#include <fstream>
//#include <iostream>
//#include <vector>
//#include <string>
//#include <queue>
// 
//using namespace std;
// 
//ifstream in("input.txt");
//ofstream out("output.txt");
//const int MAX_INT = 2'000'000;
//const int FREE = 2'000'001;
//const int START = 0;
//const int FINISH = 2'000'003;
//const int WALL = 2'000'004;
// 
//queue <int> q;
// 
//int main() {
//    int n;
//    in >> n;
//    vector <vector <int>> a(n+2, vector <int>(n+2, MAX_INT));
//    vector <string> ss(n);
//    int startX, startY;
//    for (int i = 0; i < n; i++) {
//        in >> ss[i];
//        for (int j = 0; j < n; j++) {
//            switch (ss[i][j]) {
//            case '.':
//                a[i + 1][j + 1] = FREE;
//                break;
//            case 'X':
//                a[i + 1][j + 1] = FINISH;
//                ss[i][j] = '+';
//                break;
//            case 'O':
//                a[i + 1][j + 1] = WALL;
//                break;
//            case '@':
//                a[i + 1][j + 1] = START;
//                startX = i + 1;
//                startY = j + 1;
//                break;
//            }
//        }
// 
//    }
//    q.push(startX);
//    q.push(startY);
//    bool fin = false;
//    while (q.size() > 0) {
//        startX = q.front();
//        q.pop();
//        startY = q.front();
//        q.pop();
//        if (a[startX-1][startY] == FINISH) {
//            fin = true;
//            a[startX - 1][startY] = a[startX][startY] + 1;
//            startX--;
//            break;
//        }
//        else if (a[startX + 1][startY] == FINISH) {
//            fin = true;
//            a[startX + 1][startY] = a[startX][startY]+1;
//            startX++;
//            break;
//        }
//        else if (a[startX][startY-1] == FINISH) {
//            fin = true;
//            a[startX][startY-1] = a[startX][startY] + 1;
//            startY--;
//            break;
//        }
//        else if (a[startX][startY+1] == FINISH) {
//            fin = true;
//            a[startX][startY+1] = a[startX][startY] + 1;
//            startY++;
//            break;
//        }
// 
//        if (a[startX - 1][startY] == FREE) {
//            q.push(startX - 1);
//            q.push(startY);
//            a[startX - 1][startY] = a[startX][startY] + 1;
//        }
//        if (a[startX + 1][startY] == FREE) {
//            q.push(startX + 1);
//            q.push(startY);
//            a[startX + 1][startY] = a[startX][startY] + 1;
//        }
//        if (a[startX][startY-1] == FREE) {
//            q.push(startX);
//            q.push(startY-1);
//            a[startX][startY-1] = a[startX][startY] + 1;
//        }
//        if (a[startX][startY+1] == FREE) {
//            q.push(startX);
//            q.push(startY+1);
//            a[startX][startY+1] = a[startX][startY] + 1;
//        }
//    }
// 
// 
//    if (!fin) {
//        out << "N";
//        return 0;
//    }
// 
//    while (a[startX][startY] > 1) {
//        if (a[startX][startY] == a[startX - 1][startY] + 1) {
//            ss[startX - 2][startY - 1] = '+';
//            startX--;
//        }
//        else if (a[startX][startY] == a[startX + 1][startY] + 1) {
//            ss[startX][startY - 1] = '+';
//            startX++;
//        }
//        else if (a[startX][startY] == a[startX][startY-1] + 1) {
//            ss[startX-1][startY - 2] = '+';
//            startY--;
//        }
//        else if (a[startX][startY] == a[startX][startY+1] + 1) {
//            ss[startX-1][startY] = '+';
//            startY++;
//        }
//    }
// 
//    out << "Y" << endl;
//    for (int i = 0; i < n; i++) {
//        out << ss[i] << endl;
//    }
//    return 0;
//}


//MARK: LAB E(c++)
//#include <iostream>
//#include <deque>
//#include <cstring>
//#include <vector>
//using namespace std;
//
//#define INF 0x3F3F3F3F
//#define MAXN 1010
//
//int n, m;
//string s[MAXN];
//int dist[3][MAXN][MAXN];
//int dx[4] = {0, 1, 0, -1};
//int dy[4] = {-1, 0, 1, 0};
//
//int main() {
//    cin >> n >> m;
//    for (int i = 0; i < n; i++)
//        cin >> s[i];
//    
//    memset(dist, 0x3F, sizeof(dist));
//    
//
//    for (int c = '1'; c <= '3'; c++) {
//        deque<pair<int, int>> q;
//        
//
//        for (int i = 0; i < n; i++) {
//            for (int j = 0; j < m; j++) {
//                if (s[i][j] == c) {
//                    dist[c - '1'][i][j] = 0;
//                    q.push_back({i, j});
//                }
//            }
//        }
//        
//
//        while (!q.empty()) {
//            int x = q.front().first;
//            int y = q.front().second;
//            q.pop_front();
//            
//            for (int i = 0; i < 4; i++) {
//                int nx = x + dx[i];
//                int ny = y + dy[i];
//                
//                if (0 <= nx && nx < n && 0 <= ny && ny < m && s[nx][ny] != '#') {
//                    int nd = dist[c - '1'][x][y] + (s[nx][ny] == '.');
//                    if (nd < dist[c - '1'][nx][ny]) {
//                        dist[c - '1'][nx][ny] = nd;
//                        if (s[nx][ny] == '.')
//                            q.push_back({nx, ny});
//                        else
//                            q.push_front({nx, ny});
//                    }
//                }
//            }
//        }
//    }
//    
//    int ans = INF;
//    
//
//    for (int i = 0; i < n; i++) {
//        for (int j = 0; j < m; j++) {
//            if (dist[0][i][j] != INF && dist[1][i][j] != INF && dist[2][i][j] != INF) {
//                int nval = dist[0][i][j] + dist[1][i][j] + dist[2][i][j] - 2 * (s[i][j] == '.');
//                ans = min(ans, nval);
//            }
//        }
//    }
//
//    if (ans == INF) ans = -1;
//    cout << ans << endl;
//    
//    return 0;
//}
