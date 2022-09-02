import std;

void main() {
    string S, T;
    readf("%s\n%s\n", S, T);

    auto X = std.uni.toLower(S), Y = std.uni.toLower(T);

    writeln(X == Y ? 0 : (X > Y ? 1 : -1));
}