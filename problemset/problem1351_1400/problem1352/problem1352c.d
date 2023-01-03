import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        long n, k;
        readf("%d %d\n", n, k);

        long ok, ng = long.max / 2;
        while (ng - ok > 1) {
            long mid = (ok + ng) / 2;
            (mid - mid / n < k ? ok : ng) = mid;
        }

        long res = ok + 1;
        res.writeln;
    }
}