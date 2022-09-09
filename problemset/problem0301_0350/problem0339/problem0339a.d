import std;

void main() {
    auto A = readln.chomp.split('+').to!(int[]);

    A.sort;

    writefln("%(%s+%)", A);
}