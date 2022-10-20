import std;

void main() {
    int n, m;
    readf("%d %d\n", n, m);

    auto f = readln.chomp.split.to!(int[]);

    f.sort;

    int res = int.max;
    foreach (i; 0 .. m-n+1) {
        res = min(res, f[i+n-1]-f[i]);
    }

    res.writeln;
}