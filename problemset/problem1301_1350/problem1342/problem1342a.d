import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        long x, y, a, b;
        readf("%d %d\n%d %d\n", x, y, a, b);

        if (x < y) swap(x, y);

        long res = min((x+y)*a, (x-y)*a+y*b);
        res.writeln;
    }
}