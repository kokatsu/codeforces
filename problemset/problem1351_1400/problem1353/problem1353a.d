import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n, m;
        readf("%d %d\n", n, m);

        int res;
        if (n == 2) res = m;
        else if (n >= 3) res = m * 2;

        res.writeln;
    }
}