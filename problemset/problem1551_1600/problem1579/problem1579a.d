import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        string s;
        readf("%s\n", s);

        auto l = s.length, b = s.count!(a => a == 'B');
        writeln(l - b == b ? "YES" : "NO");
    }
}