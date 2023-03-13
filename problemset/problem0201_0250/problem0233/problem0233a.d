import std;

void main() {
    int n;
    readf("%d\n", n);

    int d = n / 2, r = n % 2;

    if (r == 1) {
        writeln(-1);
        return;
    }

    auto res = iota(1, n+1).array;
    foreach (i; 0 .. d) {
        res.swapAt(i*2, i*2+1);
    }

    writefln("%(%s %)", res);
}