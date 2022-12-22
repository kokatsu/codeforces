import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto a = readln.chomp.split.to!(long[]);
        auto b = readln.chomp.split.to!(long[]);

        long amin = a.minElement, bmin = b.minElement;

        long res;
        foreach (x, y; zip(a, b)) {
            long adiff = x - amin, bdiff = y - bmin;
            res += max(adiff, bdiff);
        }

        res.writeln;
    }
}