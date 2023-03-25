import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto a = readln.chomp.split.to!(int[]);

        int[int] cnts;
        int res = -1;
        foreach (x; a) {
            ++cnts[x];
            if (cnts[x] >= 3) {
                res = x;
                break;
            }
        }

        res.writeln;
    }
}