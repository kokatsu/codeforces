import std;

void main() {
    int n;
    readf("%d\n", n);

    int[string] nums;
    foreach (_; 0 .. n) {
        string s;
        readf("%s\n", s);

        if (s in nums) writeln(s, nums[s]);
        else writeln("OK");

        ++nums[s];
    }
}