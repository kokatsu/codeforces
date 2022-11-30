import std;

void main() {
    int n, t;
    readf("%d %d\n", n, t);

    auto a = readln.chomp.split.to!(int[]);

    int pos;
    auto canGo = new bool[](n);
    while (pos < n - 1) {
        canGo[pos] = true;
        pos += a[pos];
    }
    if (pos == n - 1) canGo[pos] = true;

    writeln(canGo[t-1] ? "YES" : "NO");
}