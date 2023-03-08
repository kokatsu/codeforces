import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = new int[](n+1);
    a[1..$] = readln.chomp.split.to!(int[]);

    int m;
    readf("%d\n", m);

    auto q = readln.chomp.split.to!(int[]);

    auto s = a.cumulativeFold!"a + b".array.assumeSorted;
    foreach (x; q) {
        auto lb = s.lowerBound(x);

        auto res = lb.length;
        res.writeln;
    }
}