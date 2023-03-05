import std;

enum int L = 30;

void main() {
    int t;
    readf("%d\n", t);

    auto pow2 = new int[](L+1);
    pow2[0] = 1;
    foreach (i; 1 .. L+1) pow2[i] = pow2[i-1] * 2;

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        int h = n / 2;
        int res = pow2[n];
        foreach (i; 1 .. n) {
            res += (i < h ? 1 : -1) * pow2[i];
        }

        res.writeln;
    }
}