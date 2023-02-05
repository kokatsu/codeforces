import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = readln.chomp.split.to!(int[]);

    int res, l, r = 1;
    while (l < n) {
        while (r < n && a[r-1] < a[r]) {
            ++r;
        }

        res = max(res, r-l);

        l = r, ++r;
    }

    res.writeln;
}