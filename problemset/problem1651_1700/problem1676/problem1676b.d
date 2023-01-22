import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto a = readln.chomp.split.to!(int[]);

        int m = a.minElement;

        int res = a.map!(x => x - m).sum;
        res.writeln;
    }
}