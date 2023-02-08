import std;

void main() {
    int n, x;
    readf("%d %d\n", n, x);

    int res;
    foreach (i; 1 .. n+1) {
        if (x % i == 0 && x / i <= n) ++res;
    }

    res.writeln;
}