import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        int[] res;
        int b = 1;
        while (n > 0) {
            int d = n % 10;
            if (d > 0) {
                res ~= d * b;
            }

            n /= 10;
            b *= 10;
        }

        res.length.writeln;
        writefln("%(%s %)", res);
    }
}