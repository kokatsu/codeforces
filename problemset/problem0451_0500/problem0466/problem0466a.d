import std;

void main() {
    int n, m, a, b;
    readf("%d %d %d %d\n", n, m, a, b);

    int res = n * a;
    foreach (i; 0 .. n) {
        int num = i * a + (n - i + m - 1) / m * b;
        res = min(res, num);
    }

    res.writeln;
}