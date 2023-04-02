import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n, d;
        readf("%d %d\n", n, d);

        auto a = readln.chomp.split.to!(int[]);

        a.sort;

        writeln(a[n-1] <= d || a[0] + a[1] <= d ? "YES" : "NO");
    }
}