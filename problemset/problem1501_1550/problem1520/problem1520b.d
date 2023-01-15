import std;

enum long L = 10;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        long n;
        readf("%d\n", n);

        long res, l = L;
        while (n >= l) {
            res += L - 1;
            l *= L;
        }

        long ord = 1;
        while (ord * L + 1 < l) {
            ord *= L;
            ++ord;
        }

        long num = ord;
        while (num <= n) {
            ++res;
            num += ord;
        }

        res.writeln;
    }
}