import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int a, b, c;
        readf("%d %d %d\n", a, b, c);

        writeln(a + b == c ? "+" : "-");
    }
}