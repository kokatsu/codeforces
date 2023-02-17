import std;

const string S = "codeforces";

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        dchar c;
        readf("%c\n", c);

        writeln(S.canFind(c) ? "Yes" : "No");
    }
}