import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int a, b, c, d;
        readf("%d %d %d %d\n", a, b, c, d);

        if (a < b) swap(a, b);
        if (c < d) swap(c, d);

        writeln(a > d && c > b ? "YES" : "NO");
    }
}