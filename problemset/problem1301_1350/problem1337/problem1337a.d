import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int a, b, c, d;
        readf("%d %d %d %d\n", a, b, c, d);

        int x = b, y = c, z = c;
        writefln("%d %d %d", x, y, z);
    }
}