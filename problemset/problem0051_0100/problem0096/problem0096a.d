import std;

void main() {
    string s;
    readf("%s\n", s);

    auto g = s.group.array;

    bool isDanger;
    foreach (x; g) {
        isDanger |= (x[1] >= 7);
    }

    writeln(isDanger ? "YES" : "NO");
}