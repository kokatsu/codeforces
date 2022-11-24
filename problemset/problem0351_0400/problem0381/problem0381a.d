import std;

void main() {
    int n;
    readf("%d\n", n);

    auto cards = readln.chomp.split.to!(int[]);

    void f(ref int x) {
        if (cards.front >= cards.back) {
            x += cards.front;
            cards.popFront;
        }
        else {
            x += cards.back;
            cards.popBack;
        }
    }

    int Sereja, Dima;
    foreach (i; 0 .. n) {
        if (i % 2 == 0) f(Sereja);
        else f(Dima);
    }

    writeln(Sereja, " ", Dima);
}