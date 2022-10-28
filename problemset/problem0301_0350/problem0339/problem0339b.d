import std;

void main() {
    long n, m;
    readf("%d %d\n", n, m);

    auto a = readln.chomp.split.to!(long[]);

    long res, p = 1;
    foreach (x; a) {
        if (x < p) res += n - p + x;
        else res += x - p;

        p = x;
    }

    res.writeln;
}