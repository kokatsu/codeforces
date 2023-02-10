import std;

void main() {
    int n;
    readf("%d\n", n);

    auto b = readln.chomp.split.to!(long[]);

    b.sort;

    auto g = b.group.array;

    long x = g[0][1].to!long, y = g[$-1][1].to!long;

    long diff = b[$-1] - b[0], ways = (g.length == 1 ? x * (x - 1) / 2 : x * y);
    writeln(diff, " ", ways);
}