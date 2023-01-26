import std;

enum string[] K = [
    "qwertyuiop",
    "asdfghjkl;",
    "zxcvbnm,./"
];

void main() {
    dchar d;
    readf("%c\n", d);

    dchar[dchar] shift;
    foreach (i; 0 .. 3) {
        foreach (j, k; K[i]) {
            if (d == 'R' && j > 0) shift[k] = K[i][j-1];
            if (d == 'L' && j + 1 < K[i].length) shift[k] = K[i][j+1];
        }
    }

    string s;
    readf("%s\n", s);

    foreach (x; s) shift[x].write;
    writeln;
}