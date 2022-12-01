import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto a = readln.chomp.split.to!(int[]);

        int even, odd;
        foreach (i, x; a) {
            if (i % 2 == x % 2) continue;

            ++(x % 2 == 0 ? even : odd);
        }

        int res = (even == odd ? even : -1);
        res.writeln;
    }
}