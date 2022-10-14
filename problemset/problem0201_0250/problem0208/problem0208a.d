import std;

void main() {
    string s;
    readf("%s\n", s);

    auto t = s.split("WUB");

    string[] res;
    foreach (x; t) {
        if (x.empty) continue;
        res ~= x;
    }

    auto len = res.length;
    foreach (i, r; res) {
        r.write;

        if (i == len - 1) writeln;
        else write(" ");
    }
}