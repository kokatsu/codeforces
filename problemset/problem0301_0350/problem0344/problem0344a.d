import std;

void main() {
    int n;
    readf("%d\n", n);

    string s;
    int res;
    foreach (_; 0 .. n) {
        string t;
        readf("%s\n", t);

        if (s != t) ++res;

        s = t;
    }

    res.writeln;
}