import std;

void main() {
    int n;
    readf("%d\n", n);

    ulong lim = 10;

    foreach (_; 0 .. n) {
        string S;
        readf("%s\n", S);

        auto len = S.length;
        if (len > lim) writefln("%c%d%c", S.front, len-2, S.back);
        else S.writeln;
    }
}