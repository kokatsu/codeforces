import std;

void main() {
    int n, k;
    readf("%d %d\n", n, k);

    auto a = readln.chomp.split.to!(int[]);

    auto s = a.sort!"a > b";

    int num = a[k-1];
    if (num > 0) --num;

    auto res = s.lowerBound(num).length;
    res.writeln;
}