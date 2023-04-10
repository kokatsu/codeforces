import std;
import core.bitop;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        int res = (1 << n.bsr) - 1;
        res.writeln;
    }
}