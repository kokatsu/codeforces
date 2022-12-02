import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        string s;
        readf("%d\n%s\n", n, s);

        auto g = s.group.array;

        bool isOK = true;
        auto used = new bool[](26);
        foreach (x; g) {
            if (used[x[0]-'A']) isOK = false;
            used[x[0]-'A'] = true;
        }

        writeln(isOK ? "YES" : "NO");
    }
}