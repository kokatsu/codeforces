import std;

void main() {
    string S;
    readf("%s\n", S);

    auto G = S.to!(dchar[]).sort.group.array;

    writeln(G.length % 2 == 0 ? "CHAT WITH HER!" : "IGNORE HIM!");
}