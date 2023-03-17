import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        string s;
        readf("%d\n%s\n", n, s);

        auto res = s.map!(a => a - 'a' + 1).maxElement;
        res.writeln;
    }
}