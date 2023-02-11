import std;

void main() {
    string table;
    readf("%s\n", table);

    auto hands = readln.chomp.split;

    bool[dchar] rank, suit;
    foreach (hand; hands) {
        rank[hand[0]] = true, suit[hand[1]] = true;
    }

    bool isOK = (table[0] in rank || table[1] in suit);
    writeln(isOK ? "YES" : "NO");
}