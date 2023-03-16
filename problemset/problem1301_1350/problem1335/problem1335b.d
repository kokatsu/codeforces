import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n, a, b;
        readf("%d %d %d\n", n, a, b);

        auto d = lowercase[0..b];

        auto res = d.cycle.take(n);
        res.writeln;
    }
}