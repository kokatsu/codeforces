import std;

void main() {
    int n;
    readf("%d\n", n);

    int res;
    foreach (_; 0 .. n) {
        string s;
        readf("%s\n", s);

        if (s == "Tetrahedron") res += 4;
        if (s == "Cube") res += 6;
        if (s == "Octahedron") res += 8;
        if (s == "Dodecahedron") res += 12;
        if (s == "Icosahedron") res += 20;
    }

    res.writeln;
}