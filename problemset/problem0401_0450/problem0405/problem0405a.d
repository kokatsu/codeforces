import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = readln.chomp.split.to!(int[]);

    a.sort;

    writefln("%(%s %)", a);
}