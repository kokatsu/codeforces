import std;

void main() {
    int n;
    readf("%d\n", n);

    int res;
    foreach (_; 0 .. n) {
        int p, q;
        readf("%d %d\n", p, q);

        if (q - p >= 2) ++res;
    }

    res.writeln;
}