import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);
    auto b = readln.chomp.split.to!(int[]);

    a.popFront, b.popFront;

    auto c = a ~ b;

    c.sort;

    auto u = c.uniq.array;
    auto v = iota(1, N+1).array;

    writeln(u == v ? "I become the guy." : "Oh, my keyboard!");
}