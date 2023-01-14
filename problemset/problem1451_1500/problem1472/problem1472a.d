import std;
import core.bitop;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        long w, h, n;
        readf("%d %d %d\n", w, h, n);

        long p = (1 << w.bsf) * (1 << h.bsf);

        writeln(p >= n ? "YES" : "NO");
    }
}