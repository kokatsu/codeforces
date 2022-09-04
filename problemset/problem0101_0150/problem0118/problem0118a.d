import std;

void main() {
    string S;
    readf("%s\n", S);

    auto T = std.uni.toLower(S);

    string U = "aoyeui";

    dchar[] V;
    foreach (t; T) {
        if (U.canFind(t)) continue;

        V ~= t;
    }

    writefln("%(.%c%)", V);
}