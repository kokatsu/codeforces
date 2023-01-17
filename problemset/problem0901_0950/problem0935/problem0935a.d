import std;

void main() {
    int n;
    readf("%d\n", n);

    int res, d = 1;
    while (d * d <= n) {
        if (n % d == 0) {
            ++res;
            if (d != 1 && d * d != n) ++res;
        }

        ++d;
    }

    res.writeln;
}