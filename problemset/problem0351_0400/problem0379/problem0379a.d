import std;

void main() {
    int a, b;
    readf("%d %d\n", a, b);

    int res, rem = a, cnt;
    while (rem > 0) {
        ++res, ++cnt;

        if (cnt >= b) cnt = 0;
        else --rem;
    }

    res.writeln;
}