import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int a, b, c;
        readf("%d %d %d\n", a, b, c);

        int res = a + b + c - max(a, b, c) - min(a, b, c);
        res.writeln;
    }
}