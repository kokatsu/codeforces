import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        int res = (n - 1) / 2;
        res.writeln;
    }
}