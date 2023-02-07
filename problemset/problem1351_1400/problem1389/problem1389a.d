import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int l, r;
        readf("%d %d\n", l, r);

        int x = -1, y = -1;
        if (l * 2 <= r) x = l, y = l * 2;

        writeln(x, " ", y);
    }
}