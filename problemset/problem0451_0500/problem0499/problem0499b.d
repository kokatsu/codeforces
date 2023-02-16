import std;

void main() {
    int n, m;
    readf("%d %d\n", n, m);

    string[string] words;
    foreach (_; 0 .. m) {
        string a, b;
        readf("%s %s\n", a, b);

        if (a.length > b.length) words[a] = b;
    }

    auto c = readln.chomp.split;
    foreach (ref x; c) {
        if (x in words) x = words[x];
    }

    writefln("%-(%s %)", c);
}