import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n, x;
        readf("%d %d\n", n, x);

        int res = 1;
        if (n > 2) {
            res += (n + x - 3) / x;
        }

        res.writeln;
    }
}