import std;

void main() {
    int n, m;
    readf("%d %d\n", n, m);

    auto a = readln.chomp.split.to!(int[]);

    auto edges = new int[][](n);
    foreach (_; 0 .. n-1) {
        int x, y;
        readf("%d %d\n", x, y);

        --x, --y;
        edges[x] ~= y, edges[y] ~= x;
    }

    auto cnts = new int[](n);
    cnts[1..n] = int.max;
    cnts[0] = a[0];

    int res;
    void f(int pos, int pre = -1) {
        int cnt;
        foreach (e; edges[pos]) {
            if (e == pre) continue;

            ++cnt;
            cnts[e] = (a[e] == 1 ? cnts[pos] + 1 : 0);
            if (cnts[e] <= m) {
                f(e, pos);
            }
        }

        if (cnt == 0 && cnts[pos] <= m) ++res;
    }

    f(0);

    res.writeln;
}