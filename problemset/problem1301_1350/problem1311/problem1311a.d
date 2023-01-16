import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int a, b;
        readf("%d %d\n", a, b);

        int res;
        if (a > b) {
            ++res;
            if ((a - b) % 2 == 1) ++res;
        }
        else if (a < b) {
            ++res;
            if ((b - a) % 2 == 0) ++res;
        }

        res.writeln;
    }
}