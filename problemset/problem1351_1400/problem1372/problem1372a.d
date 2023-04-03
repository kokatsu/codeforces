import std;

void main() {
    int t;
    readf("%d\n", t);

    auto arr = 1.repeat(1000).array;

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        writefln("%(%s %)", arr[0..n]);
    }
}