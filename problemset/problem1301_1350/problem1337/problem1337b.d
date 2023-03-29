import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int x, n, m;
        readf("%d %d %d\n", x, n, m);

        foreach (i; 0 .. n) {
            int u = x / 2 + 10;
            if (x > u) x = u;
        }

        writeln(x <= m * 10 ? "YES" : "NO");
    }
}