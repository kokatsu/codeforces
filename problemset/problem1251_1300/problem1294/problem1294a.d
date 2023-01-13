import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int a, b, c, n;
        readf("%d %d %d %d\n", a, b, c, n);

        int s = a + b + c + n;
        int d = s / 3, r = s % 3;

        writeln(r == 0 && max(a, b, c) <= d ? "YES" : "NO");
    }
}