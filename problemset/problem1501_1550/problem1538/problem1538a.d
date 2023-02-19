import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto a = readln.chomp.split.to!(int[]);

        auto mn = a.minIndex.to!int, mx = a.maxIndex.to!int;

        int res = min(max(mn, mx)+1, max(n-mn, n-mx), mn+n-mx+1, mx+n-mn+1);
        res.writeln;
    }
}