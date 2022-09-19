import std;

void main() {
    string s, t;
    readf("%s\n%s\n", s, t);

    auto r = s.dup;
    r.reverse;

    writeln(r == t ? "YES" : "NO");
}