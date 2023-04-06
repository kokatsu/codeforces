import std;

void main() {
    int n;
    readf("%d\n", n);

    auto s = readln.chomp.to!(dchar[]);

    auto g = s.group.array;

    uint res;
    foreach (x; g) {
        if (x[0] == 'x' && x[1] > 2) {
            res += x[1] - 2;
        }
    }

    res.writeln;
}