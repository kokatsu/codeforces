import std;

void main() {
    string s;
    readf("%s\n", s);

    string res;

    auto len = s.length.to!int;
    int i;
    while (i < len) {
        if (s[i] == '.') res ~= '0', i += 1;
        else if (i + 1 == len || s[i+1] == '.') res ~= '1', i += 2;
        else res ~= '2', i += 2;
    }

    res.writeln;
}