import std;

enum int H = 60;
enum int L = H * 24;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int h, m;
        readf("%d %d\n", h, m);

        int res = L - (h * H + m);
        res.writeln;
    }
}