import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        long n;
        readf("%d\n", n);

        auto a = readln.chomp.split.to!(long[]);

        long[long] cnts;
        foreach (i; 0 .. n) ++cnts[a[i.to!uint]-i];

        long res;
        foreach (val; cnts.byValue) res += val * (val - 1) / 2;

        res.writeln;
    }
}