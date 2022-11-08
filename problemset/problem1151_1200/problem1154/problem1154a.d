import std;

void main() {
    auto x = readln.chomp.split.to!(long[]);

    x.sort;

    long a = x[0] + x[1] - x[3], b = x[1] - a, c = x[2] - b;
    writeln(a, " ", b, " ", c);
}