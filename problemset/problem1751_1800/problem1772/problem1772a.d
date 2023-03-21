import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int a, b;
        readf("%d+%d\n", a, b);

        int res = a + b;
        res.writeln;
    }
}