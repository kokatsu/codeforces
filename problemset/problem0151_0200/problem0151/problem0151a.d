import std;

void main() {
    int n, k, l, c, d, p, nl, np;
    readf("%d %d %d %d %d %d %d %d\n", n, k, l, c, d, p, nl, np);

    int A = k * l, B = c * d, C = p;

    int res = min(A/nl, B, C/np) / n;
    res.writeln;
}