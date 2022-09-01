import std;

struct Coord {
    int x, y;
}

void main() {
    int N = 5;

    int x, y;
    auto A = new int[][](N);
    foreach (i; 0 .. N) {
        A[i] = readln.chomp.split.to!(int[]);

        foreach (j, a; A[i]) {
            if (a == 1) x = i, y = j.to!int;
        }
    }

    int[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];

    auto cnts = new int[][](N, N);
    foreach (i; 0 .. N) cnts[i][] = N * N;
    cnts[x][y] = 0;

    Coord[] que;
    que ~= Coord(x, y);
    while (!que.empty) {
        auto f = que.front;
        que.popFront;

        foreach (i; 0 .. 4) {
            int nx = f.x + dx[i], ny = f.y + dy[i];
            if (nx < 0 || N <= nx || ny < 0 || N <= ny) continue;
            if (cnts[nx][ny] <= cnts[f.x][f.y] + 1) continue;

            cnts[nx][ny] = cnts[f.x][f.y] + 1;
            que ~= Coord(nx, ny);
        }
    }

    int res = cnts[N/2][N/2];
    res.writeln;
}