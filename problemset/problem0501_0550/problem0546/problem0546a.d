import std;

void main() {
    long k, n, w;
    readf("%d %d %d\n", k, n, w);

    long m = w * (w + 1) / 2 * k;

    long res = max(0, m-n);
    res.writeln;
}