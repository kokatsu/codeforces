import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = readln.chomp.split.to!(int[]);

    int res, mn = a[0], mx = a[0];
    foreach (x; a) {
        if (x < mn) {
            mn = x, ++res;
        }
        if (x > mx) {
            mx = x, ++res;
        }
    }

    res.writeln;
}