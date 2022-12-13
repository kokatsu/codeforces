import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        auto a = readln.chomp.split.to!(int[]);
        int Timur = a[0];

        a.sort!"a > b";

        auto res = a.countUntil(Timur);
        res.writeln;
    }
}