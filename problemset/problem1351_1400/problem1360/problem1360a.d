import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int a, b;
        readf("%d %d\n", a, b);

        if (a < b) swap(a, b);

        int res = max(a, b*2) ^^ 2;
        res.writeln;
    }
}