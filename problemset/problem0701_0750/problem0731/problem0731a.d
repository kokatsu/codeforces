import std;

void main() {
    string s;
    readf("%s\n", s);

    int res;
    dchar c = 'a';
    foreach (x; s) {
        int d = abs(to!int(x-'a')-to!int(c-'a'));
        res += min(d, 26-d);
        c = x;
    }

    res.writeln;
}