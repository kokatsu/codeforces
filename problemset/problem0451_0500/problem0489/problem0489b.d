import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = readln.chomp.split.to!(int[]);

    int m;
    readf("%d\n", m);

    auto b = readln.chomp.split.to!(int[]);

    a.sort;

    int[int] cnts;
    foreach (x; b) ++cnts[x];

    int res;
    foreach (x; a) {
        if (x - 1 in cnts && cnts[x-1] > 0) ++res, --cnts[x-1];
        else if (x in cnts && cnts[x] > 0) ++res, --cnts[x];
        else if (x + 1 in cnts && cnts[x+1] > 0) ++res, --cnts[x+1];
    }

    res.writeln;
}