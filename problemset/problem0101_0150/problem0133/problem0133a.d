import std;

void main() {
    string p;
    readf("%s\n", p);

    bool isOK;
    foreach (x; p) {
        isOK |= (x == 'H' || x == 'Q' || x == '9');
    }

    writeln(isOK ? "YES" : "NO");
}