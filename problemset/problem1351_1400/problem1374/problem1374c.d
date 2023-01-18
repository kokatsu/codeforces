import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        string s;
        readf("%d\n%s\n", n, s);

        int res, cnt;
        foreach (x; s) {
            cnt += (x == ')' ? 1 : -1);
            res = max(res, cnt);
        }

        res.writeln;
    }
}