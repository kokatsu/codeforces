import std;

void main() {
    string S;
    readf("%s\n", S);

    foreach (i, s; S) {
        if (i == 0) std.uni.toUpper(s).write;
        else s.write;
    }

    writeln;
}