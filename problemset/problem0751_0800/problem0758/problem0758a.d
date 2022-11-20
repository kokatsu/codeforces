import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = readln.chomp.split.to!(int[]);

    int m = a.maxElement;

    int res;
    foreach (x; a) {
        res += m - x;
    }

    res.writeln;
}