import std;

void main() {
    int n;
    readf("%d\n", n);

    string a = "I hate", b = "I love";
    string c = " that ", d = " it";

    string res;
    foreach (i; 1 .. n+1) {
        res ~= (i % 2 == 1 ? a : b);
        res ~= (i == n ? d : c);
    }

    res.writeln;
}