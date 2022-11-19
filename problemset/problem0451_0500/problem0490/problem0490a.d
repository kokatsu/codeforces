import std;

void main() {
    int n;
    readf("%d\n", n);

    auto t = readln.chomp.split.to!(int[]);

    auto pos = new int[][](3);
    foreach (i, x; t) {
        pos[x-1] ~= i.to!int + 1;
    }

    auto len = min(pos[0].length, pos[1].length, pos[2].length);
    len.writeln;

    foreach (i; 0 .. len) {
        writeln(pos[0][i], " ", pos[1][i], " ", pos[2][i]);
    }
}