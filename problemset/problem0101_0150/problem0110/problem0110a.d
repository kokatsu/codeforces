import std;

void main() {
    string n;
    readf("%s\n", n);

    ulong cnt = n.count('4') + n.count('7');

    bool isNearlyLucky = (cnt > 0);
    while (cnt > 0) {
        ulong d = cnt % 10;
        isNearlyLucky &= (d == 4 || d == 7);

        cnt /= 10;
    }

    writeln(isNearlyLucky ? "YES" : "NO");
}