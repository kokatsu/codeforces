import std;

void main() {
    string s;
    readf("%s\n", s);

    bool[char] list;
    foreach (x; s) {
        if (std.uni.isLower(x)) list[x] = true;
    }

    auto res = list.length;
    res.writeln;
}