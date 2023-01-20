import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto res = iota(1, n+1).array;
        res[] %= n;
        res[] += 1;

        writefln("%(%s %)", res);
    }
}