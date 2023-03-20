import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int a, b, c;
        readf("%d %d %d\n", a, b, c);

        int mx = max(a, b, c);

        int mx1 = max(b, c);
        int x = (a == mx ? a == mx1 ? 1 : 0 : mx + 1 - a);

        int mx2 = max(a, c);
        int y = (b == mx ? b == mx2 ? 1 : 0 : mx + 1 - b);

        int mx3 = max(a, b);
        int z = (c == mx ? c == mx3 ? 1 : 0 : mx + 1 - c);

        writeln(x, " ", y, " ", z);
    }
}