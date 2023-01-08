import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        string s;
        readf("%s\n", s);

        auto len = s.length;

        bool isOK;
        if (len % 2 == 0) {
            isOK = (s[0..len/2] == s[len/2..$]);
        }

        writeln(isOK ? "YES" : "NO");
    }
}