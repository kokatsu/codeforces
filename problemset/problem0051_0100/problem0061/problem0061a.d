import std;

void main() {
    string s, t;
    readf("%s\n%s\n", s, t);

    auto len = s.length;

    auto res = new dchar[](len);
    foreach (i; 0 .. len) {
        res[i] = (s[i] == t[i] ? '0' : '1');
    }

    res.writeln;
}