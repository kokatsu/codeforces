import std;

void main() {
    long n, m, a;
    readf("%d %d %d\n", n, m, a);

    long x = (n + a - 1) / a, y = (m + a - 1) / a;

    long res = x * y;
    res.writeln;
}