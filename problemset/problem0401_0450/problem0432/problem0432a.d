import std;

void main() {
    int n, k;
    readf("%d %d\n", n, k);

    auto y = readln.chomp.split.to!(int[]);

    auto x = new int[](n);
    x[] = 5 - y[];

    x.sort!"a > b";

    int res;
    for (int i = 2; i < n; i += 3) {
        if (x[i] >= k) ++res;
    }

    res.writeln;
}