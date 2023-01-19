import std;

void main() {
    int n, t;
    readf("%d %d\n", n, t);

    auto a = readln.chomp.split.to!(int[]);

    int res, time, r;
    foreach (l, x; a) {
        while (r < n && time + a[r] <= t) {
            time += a[r++];
        }

        res = max(res, r-l.to!int);

        if (l == r) ++r;
        else time -= x;
    }

    res.writeln;
}