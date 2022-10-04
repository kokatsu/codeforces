import std;

void main() {
    auto s = readln.chomp.split.to!(int[]);

    auto t = s.dup.sort.uniq.array;

    auto res = s.length - t.length;
    res.writeln;
}