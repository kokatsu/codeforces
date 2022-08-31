import std;

void main() {
    int n;
    readf("%d\n", n);

    int res;
    foreach (_; 0 .. n) {
        string s;
        readf("%s\n", s);

        res += (s[1] == '+' ? 1 : -1);
    }

    res.writeln;
}