import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        int d = n / 3, r = n % 3;

        int x, y, z;
        if (r == 0) {
            x = d, y = d + 1, z = d - 1;
        }
        else if (r == 1) {
            x = d, y = d + 2, z = d - 1;
        }
        else {
            x = d + 1, y = d + 2, z = d - 1;
        }

        writefln("%d %d %d", x, y, z);
    }
}