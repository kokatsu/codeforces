import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto s = readln.chomp.split.to!(int[]);

        s.sort;

        auto res = s.slide(2).map!(a => a[1] - a[0]).array.minElement;
        res.writeln;
    }
}