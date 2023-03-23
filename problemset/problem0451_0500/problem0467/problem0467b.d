import std;
import core.bitop;

void main() {
    int n, m, k;
    readf("%d %d %d\n", n, m, k);

    auto player = new int[](m);
    foreach (i; 0 .. m) readf("%d\n", player[i]);

    int fedor;
    readf("%d\n", fedor);

    int res;
    foreach (p; player) {
        int cnt = popcnt(p^fedor);
        if (cnt <= k) ++res;
    }

    res.writeln;
}