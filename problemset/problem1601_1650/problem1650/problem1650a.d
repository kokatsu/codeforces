import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        string s;
        dchar c;
        readf("%s\n%c\n", s, c);

        int[] pos;
        foreach (i, x; s) {
            if (x == c) pos ~= i.to!int;
        }

        writeln(pos.canFind!(a => a % 2 == 0) ? "Yes" : "No");
    }
}