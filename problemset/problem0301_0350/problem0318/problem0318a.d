import std;

void main() {
    long n, k;
    readf("%d %d\n", n, k);

    long res, odd = (n + 1) / 2;
    if (k <= odd) {
        res = k * 2 - 1;
    }
    else {
        res = (k - odd) * 2;
    }

    res.writeln;
}