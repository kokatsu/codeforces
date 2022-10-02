import std;

void main() {
    int n;
    readf("%d\n", n);

    auto p = readln.chomp.split.to!(int[]);

    auto res = p.sum.to!real / n;
    writefln("%.10f", res);
}