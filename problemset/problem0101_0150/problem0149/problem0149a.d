import std;

void main() {
    int k;
    readf("%d\n", k);

    auto a = readln.chomp.split.to!(int[]);

    if (k == 0) {
        writeln(0);
        return;
    }

    a.sort!"a > b";

    foreach (i, x; a) {
        k -= x;
        if (k <= 0) {
            writeln(i+1);
            return;
        }
    }

    writeln(-1);
}