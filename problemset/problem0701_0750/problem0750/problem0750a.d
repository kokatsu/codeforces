import std;

void main() {
    int n, k;
    readf("%d %d\n", n, k);

    int res, rem = 240 - k;
    foreach (i; 1 .. n+1) {
        if (rem < i * 5) break;

        res = i, rem -= i * 5;
    }

    res.writeln;
}