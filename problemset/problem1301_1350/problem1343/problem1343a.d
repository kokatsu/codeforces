import std;

void main() {
    long t;
    readf("%d\n", t);

    long[] pow2 = [4];
    while (pow2.back < int.max) {
        pow2 ~= pow2.back * 2;
    }

    foreach (_; 0 .. t) {
        long n;
        readf("%d\n", n);

        foreach (p; pow2) {
            if (n % (p - 1) == 0) {
                long res = n / (p - 1);
                res.writeln;
                break;
            }
        }
    }
}