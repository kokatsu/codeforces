import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto a = readln.chomp.split.to!(long[]);

        long[] b;
        b ~= a[0];
        foreach (i; 1 .. n) {
            if (b.back * a[i] > 0) b.back = max(b.back, a[i]);
            else b ~= a[i];
        }

        long res = b.sum;
        res.writeln;
    }
}