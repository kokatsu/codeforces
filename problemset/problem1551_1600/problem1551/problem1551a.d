import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        int d = n / 3, r = n % 3;

        int c1 = d, c2 = d;
        if (r == 1) ++c1;
        if (r == 2) ++c2;

        writeln(c1, " ", c2);
    }
}