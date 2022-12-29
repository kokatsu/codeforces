import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        int cnt3;
        while (n > 1 && n % 3 == 0) {
            n /= 3;
            ++cnt3;
        }

        int cnt2;
        while (n > 1 && n % 2 == 0) {
            n /= 2;
            ++cnt2;
        }

        int res = -1;
        if (n == 1 && cnt3 >= cnt2) res = cnt3 * 2 - cnt2;

        res.writeln;
    }
}