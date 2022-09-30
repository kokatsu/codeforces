import std;

void main() {
    long n;
    readf("%d\n", n);

    long res = n / 2;
    if (n % 2 == 1) res -= n;

    res.writeln;
}