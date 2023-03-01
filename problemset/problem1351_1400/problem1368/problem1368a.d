import std;

enum long L = 10 ^^ 9;

void main() {
    int T;
    readf("%d\n", T);

    long[] fib = [0L, 1L];
    while (fib[$-1] < L) {
        fib ~= fib[$-2] + fib[$-1];
    }

    auto len = fib.length.to!int;

    foreach (_; 0 .. T) {
        long a, b, n;
        readf("%d %d %d\n", a, b, n);

        if (a < b) swap(a, b);

        if (a > n) {
            writeln(0);
            continue;
        }

        int ok = len - 2, ng = -1;
        while (ok - ng > 1) {
            int mid = (ok + ng) / 2;

            long num = fib[mid+1] * a + fib[mid] * b;
            (num > n ? ok : ng) = mid;
        }

        ok.writeln;
    }
}