import std;

void main() {
    int n;
    readf("%d\n", n);

    auto p = readln.chomp.split.to!(int[]);

    auto res = new int[](n+1);
    foreach (i, x; p) {
        res[x] = i.to!int + 1;
    }

    res.popFront;

    writefln("%(%s %)", res);
}