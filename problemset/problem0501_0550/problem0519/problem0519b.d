import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = readln.chomp.split.to!(int[]);
    auto b = readln.chomp.split.to!(int[]);
    auto c = readln.chomp.split.to!(int[]);

    auto ga = a.sort.group;

    auto gb = b.sort.group;
    uint[int] cntsb;
    foreach (g; gb) cntsb[g[0]] = g[1];

    auto gc = c.sort.group;
    uint[int] cntsc;
    foreach (g; gc) cntsc[g[0]] = g[1];

    foreach (g; ga) {
        if (g[0] !in cntsb || g[1] != cntsb[g[0]]) {
            g[0].writeln;
        }
    }

    foreach (g; gb) {
        if (g[0] !in cntsc || g[1] != cntsc[g[0]]) {
            g[0].writeln;
        }
    }
}