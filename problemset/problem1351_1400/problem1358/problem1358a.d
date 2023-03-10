import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n, m;
        readf("%d %d\n", n, m);

        int res = (n % 2 == 0 || m % 2 == 0 ? n * m / 2 : (n * m + 1) / 2);
        res.writeln;
    }
}