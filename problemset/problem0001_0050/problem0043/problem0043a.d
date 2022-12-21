import std;

void main() {
    int n;
    readf("%d\n", n);

    int[string] scores;
    foreach (_; 0 .. n) {
        string s;
        readf("%s\n", s);

        ++scores[s];
    }

    auto res = scores.byPair.maxElement!(x => x.value).key;
    res.writeln;
}