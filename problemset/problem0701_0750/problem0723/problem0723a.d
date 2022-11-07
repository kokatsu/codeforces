import std;

void main() {
    auto x = readln.chomp.split.to!(int[]);

    x.sort;

    int res = int.max;
    foreach (i; x.front .. x.back+1) {
        int num;
        foreach (a; x) {
            num += abs(a-i);
        }

        res = min(res, num);
    }

    res.writeln;
}