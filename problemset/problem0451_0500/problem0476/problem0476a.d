import std;

void main() {
    int n, m;
    readf("%d %d\n", n, m);

    int res = int.max;
    foreach (i; 0 .. n/2+1) {
        int rem = n - i * 2, cnt = i + rem;
        if (cnt % m == 0) {
            res = min(res, cnt);
        }
    }

    if (res == int.max) res = -1;

    res.writeln;
}