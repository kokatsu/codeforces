import std;

void main() {
    int y;
    readf("%d\n", y);

    while (true) {
        ++y;

        auto d = y.to!string.to!(dchar[]);
        d.sort;

        auto g = d.group.array;
        if (g.length == 4) break;
    }

    y.writeln;
}