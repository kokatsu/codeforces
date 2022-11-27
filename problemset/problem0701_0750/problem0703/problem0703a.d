import std;

void main() {
    int n;
    readf("%d\n", n);

    int Mishka, Chris;
    foreach (_; 0 .. n) {
        int m, c;
        readf("%d %d\n", m, c);

        if (m > c) ++Mishka;
        if (m < c) ++Chris;
    }

    string res = "Friendship is magic!^^";
    if (Mishka > Chris) res = "Mishka";
    if (Mishka < Chris) res = "Chris";

    res.writeln;
}