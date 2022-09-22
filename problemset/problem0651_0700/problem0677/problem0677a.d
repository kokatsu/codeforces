import std;

void main() {
    int n, h;
    readf("%d %d\n", n, h);

    auto a = readln.chomp.split.to!(int[]);

    int res;
    foreach (x; a) {
        res += (x > h ? 2 : 1);
    }

    res.writeln;
}