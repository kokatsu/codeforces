import std;

void main() {
    string S;
    readf("%s\n", S);

    auto T = S.replaceFirst(regex("AB"), "1");
    bool AB = S.canFind("AB") && T.canFind("BA");

    auto U = S.replaceFirst(regex("BA"), "1");
    bool BA = S.canFind("BA") && U.canFind("AB");

    bool isOK = AB || BA;
    writeln(isOK ? "YES" : "NO");
}