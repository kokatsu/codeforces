import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = readln.chomp.split.to!(int[]);

    writeln(a.canFind(1) ? "HARD" : "EASY");
}