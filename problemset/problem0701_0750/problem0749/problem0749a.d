import std;

void main() {
    int n;
    readf("%d\n", n);

    int d = n / 2, r = n % 2;

    auto arr = [2].replicate(d);
    arr.back += r;

    d.writeln;
    writefln("%(%s %)", arr);
}