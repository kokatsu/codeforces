import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto a = readln.chomp.split.to!(int[]);

        auto g = a.sort.group.array;
        writeln(g.length == n ? "YES" : "NO");
    }
}