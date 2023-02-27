import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        long n, k;
        readf("%d %d\n", n, k);

        long d = n - k * k;
        writeln(d >= 0 && d % 2 == 0 ? "YES" : "NO");
    }
}