import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = readln.chomp.split.to!(int[]);

    a.sort!"a > b";

    int res, num, rem = a.sum;
    foreach (x; a) {
        if (num > rem) break;

        ++res, num += x, rem -= x;
    }

    res.writeln;
}