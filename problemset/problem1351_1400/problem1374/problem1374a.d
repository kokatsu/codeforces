import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int x, y, n;
        readf("%d %d %d\n", x, y, n);

        int d = n / x, r = n % x;

        int res;
        if (r >= y) {
            res = d * x + y;
        }
        else if (d > 0) {
            res = (d - 1) * x + y;
        }

        res.writeln;
    }
}