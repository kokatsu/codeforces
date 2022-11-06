import std;

void main() {
    long k, r;
    readf("%d %d\n", k, r);

    long res = 1, n = k;
    while (n % 10 != 0 && n % 10 != r) {
        ++res, n += k;
    }

    res.writeln;
}