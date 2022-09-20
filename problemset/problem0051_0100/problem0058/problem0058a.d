import std;

void main() {
    string s;
    readf("%s\n", s);

    string t = "hello";

    int idx;
    foreach (x; s) {
        if (x == t[idx]) ++idx;

        if (idx >= 5) break;
    }

    writeln(idx >= 5 ? "YES" : "NO");
}