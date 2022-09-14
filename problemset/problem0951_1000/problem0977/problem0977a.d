import std;

void main() {
    int n, k;
    readf("%d %d\n", n, k);

    int res = n;
    foreach (_; 0 .. k) {
        if (res % 10 == 0) res /= 10;
        else --res;
    }

    res.writeln;
}