import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        string s;
        readf("%d\n%s\n", n, s);

        bool isOK;
        int x, y;
        foreach (z; s) {
            if (z == 'U') ++x;
            if (z == 'D') --x;
            if (z == 'R') ++y;
            if (z == 'L') --y;

            isOK |= (x == 1 && y == 1);
        }

        writeln(isOK ? "YES" : "NO");
    }
}