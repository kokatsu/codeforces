import std;

int L = 5 * 10 ^^ 5;

void main() {
    int t;
    readf("%d\n", t);

    auto list = new long[](L);
    foreach (i; iota(3, L, 2)) {
        list[i] = list[i-2] + i.to!long / 2 * (i.to!long - 1) * 4;
    }

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        long res = list[n];
        res.writeln;
    }
}