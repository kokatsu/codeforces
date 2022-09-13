import std;

void main() {
    string s;
    readf("%s\n", s);

    int l, u;
    foreach (x; s) {
        ++(std.uni.isLower(x) ? l : u);
    }

    writeln(l >= u ? std.uni.toLower(s) : std.uni.toUpper(s));
}