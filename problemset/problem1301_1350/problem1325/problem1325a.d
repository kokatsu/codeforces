import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int x;
        readf("%d\n", x);

        int a, b;
        if (x % 2 == 0) a = x / 2, b = x / 2;
        else a = x - 1, b = 1;

        writeln(a, " ", b);
    }
}