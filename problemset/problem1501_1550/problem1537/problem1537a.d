import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto a = readln.chomp.split.to!(int[]);

        int res, s = a.sum;
        if (s > n) res = s - n;
        if (s < n) res = 1;

        res.writeln;
    }
}