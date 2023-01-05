import std;

enum string COLOR = "CMY";

void main() {
    int n, m;
    readf("%d %d\n", n, m);

    bool isColor;
    foreach (_; 0 .. n) {
        auto s = readln.chomp.split;
        foreach (x; s) {
            isColor |= COLOR.canFind(x);
        }
    }

    writeln(isColor ? "#Color" : "#Black&White");
}