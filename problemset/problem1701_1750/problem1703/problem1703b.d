import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto s = readln.chomp.to!(dchar[]);

        auto res = s.sort.group.array.map!"a[1] + 1".sum;
        res.writeln;
    }
}