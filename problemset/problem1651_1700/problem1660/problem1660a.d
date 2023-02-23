import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int a, b;
        readf("%d %d\n", a, b);

        int res = (a == 0 ? 1 : a + b * 2 + 1);
        res.writeln;
    }
}