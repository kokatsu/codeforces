import std;

void main() {
    int n, m;
    readf("%d %d\n", n, m);

    int res;
    while (n > 0) {
        ++res;
        if (res % m != 0) --n;
    }

    res.writeln;
}