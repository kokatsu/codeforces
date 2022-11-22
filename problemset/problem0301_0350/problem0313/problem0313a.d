import std;

void main() {
    int n;
    readf("%d\n", n);

    int res = n;
    if (n < 0) {
        res = max(n/10, n/100*10+n%10);
    }

    res.writeln;
}