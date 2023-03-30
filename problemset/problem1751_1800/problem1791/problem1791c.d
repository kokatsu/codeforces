import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        string s;
        readf("%d\n%s\n", n, s);

        int l, r = n - 1;
        while (l < r) {
            if (s[l] == s[r]) break;
            ++l, --r;
        }

        int res = r - l + 1;
        res.writeln;
    }
}