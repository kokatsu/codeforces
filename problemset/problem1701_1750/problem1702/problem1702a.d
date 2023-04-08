import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        long m;
        readf("%d\n", m);

        long n = 1;
        while (n * 10 <= m) {
            n *= 10;
        }

        long res = m - n;
        res.writeln;
    }
}