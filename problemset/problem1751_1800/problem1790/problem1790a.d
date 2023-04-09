import std;

enum string P = "314159265358979323846264338327";

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        string n;
        readf("%s\n", n);

        int res;
        foreach (i, x; n) {
            if (x != P[i]) break;
            ++res;
        }

        res.writeln;
    }
}