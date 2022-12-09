import std;

void main() {
    auto a = readln.chomp.split.to!(int[]);

    string s;
    readf("%s\n", s);

    int res;
    foreach (x; s) res += a[x-'1'];

    res.writeln;
}