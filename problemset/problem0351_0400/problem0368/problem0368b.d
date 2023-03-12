import std;

void main() {
    int n, m;
    readf("%d %d\n", n, m);

    auto a = readln.chomp.split.to!(int[]);

    int[int] list;
    foreach (x; a) ++list[x];

    auto len = list.length.to!int;
    auto cnts = new int[](n+1);
    foreach (i, x; a) {
        cnts[i+1] = len;

        --list[x];
        if (list[x] == 0) --len;
    }

    foreach (_; 0 .. m) {
        int l;
        readf("%d\n", l);

        cnts[l].writeln;
    }
}