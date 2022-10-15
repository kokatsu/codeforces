import std;

void main() {
    dstring s;
    readf("%s\n", s);

    auto len = s.length;
    bool need = true;
    foreach (i; 1 .. len) {
        need &= std.uni.isUpper(s[i]);
    }

    dchar[] res = s.dup;
    if (need) {
        foreach (i, x; s) {
            if (std.uni.isUpper(x)) res[i] = std.uni.toLower(x);
            else res[i] = std.uni.toUpper(x);
        }
    }

    res.writeln;
}