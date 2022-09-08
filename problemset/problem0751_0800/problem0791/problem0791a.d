import std;

void main() {
    long a, b;
    readf("%d %d\n", a, b);

    long res;
    while (a <= b) {
        a *= 3, b *= 2;
        ++res;
    }

    res.writeln;
}