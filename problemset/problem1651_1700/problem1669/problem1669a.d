import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int rating;
        readf("%d\n", rating);

        int X = 4;
        if (rating >= 1900) X = 1;
        else if (rating >= 1600) X = 2;
        else if (rating >= 1400) X = 3;

        writeln("Division ", X);
    }
}