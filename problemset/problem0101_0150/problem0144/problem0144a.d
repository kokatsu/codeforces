import std;

void main() {
    long n;
    readf("%d\n", n);

    auto a = readln.chomp.split.to!(long[]);

    long mx = a.maxIndex;

    a.reverse;

    long mn = a.minIndex;

    if (mx >= n - mn) --mn;

    long res = mx + mn;
    res.writeln;
}