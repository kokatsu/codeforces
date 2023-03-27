import std;

void main() {
    int n, a, b;
    readf("%d %d %d\n", n, a, b);

    int res = min(n-a, b+1);
    res.writeln;
}