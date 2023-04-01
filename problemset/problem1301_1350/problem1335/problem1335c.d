import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto a = readln.chomp.split.to!(int[]);

        int maxCount;
        int[int] counts;
        foreach (x; a) {
            maxCount = max(maxCount, ++counts[x]);
        }

        int uniqueCount = counts.length.to!int;

        int res = maxCount == uniqueCount ? maxCount - 1 : min(maxCount, uniqueCount);
        res.writeln;
    }
}