import std;

void main() {
    int n;
    readf("%d\n", n);

    int res, cnt;
    foreach (i; 1 .. n+1) {
        int a, b;
        readf("%d %d\n", a, b);

        cnt = cnt - a + b;
        res = max(res, cnt);
    }

    res.writeln;
}