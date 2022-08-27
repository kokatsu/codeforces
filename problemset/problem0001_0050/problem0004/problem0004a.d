import std;

void main() {
    int w;
    readf("%d\n", w);

    bool canDivide;
    foreach (i; 2 .. w) {
        if (i % 2 == 1) continue;

        canDivide |= ((w - i) % 2 == 0);
    }

    writeln(canDivide ? "YES" : "NO");
}