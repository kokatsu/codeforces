import std;

void main() {
    int n, m;
    readf("%d %d\n", n, m);

    auto a = readln.chomp.split.to!(int[]);

    a.sort;

    int res;
    foreach (i, x; a) {
        if (i >= m || x >= 0) break;
        res += x;
    }

    res = -res;

    res.writeln;
}