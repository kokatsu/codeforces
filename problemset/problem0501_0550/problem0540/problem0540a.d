import std;

void main() {
    int n;
    string s, t;
    readf("%d\n%s\n%s\n", n, s, t);

    int res;
    foreach (x, y; zip(s, t)) {
        int u = x - '0', v = y - '0';

        int d = abs(u-v);

        res += min(d, 10-d);
    }

    res.writeln;
}