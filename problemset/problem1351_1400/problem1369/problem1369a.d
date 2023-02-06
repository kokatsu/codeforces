import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        writeln(n % 4 == 0 ? "YES" : "NO");
    }
}