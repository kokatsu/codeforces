import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        long n, k;
        readf("%d %d\n", n, k);

        long res;
        if (n <= k) {
            res = (k + n - 1) / n;
        }
        else {
            res = 1;
            if (n % k > 0) ++res;
        }

        res.writeln;
    }
}