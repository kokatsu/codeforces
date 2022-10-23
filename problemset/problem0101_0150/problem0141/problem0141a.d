import std;

void main() {
    auto s = new string[](3);
    foreach (i; 0 .. 3) readf("%s\n", s[i]);

    auto cnts = new int[](26);
    foreach (i; 0 .. 3) {
        foreach (x; s[i]) {
            cnts[x-'A'] += (i < 2 ? -1 : 1);
        }
    }

    bool isOK = true;
    foreach (cnt; cnts) {
        isOK &= (cnt == 0);
    }

    writeln(isOK ? "YES" : "NO");
}