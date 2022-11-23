import std;

void main() {
    int n;
    readf("%d\n", n);

    auto x = readln.chomp.split.to!(int[]);

    auto s = x.sort;

    int q;
    readf("%d\n", q);

    foreach (_; 0 .. q) {
        int m;
        readf("%d\n", m);

        auto lb = s.lowerBound(m+1);

        auto res = lb.length;
        res.writeln;
    }
}