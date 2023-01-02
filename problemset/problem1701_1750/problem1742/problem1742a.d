import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        auto a = readln.chomp.split.to!(int[]);

        a.sort;

        writeln(a[0] + a[1] == a[2] ? "YES" : "NO");
    }
}