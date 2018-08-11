#include <iostream>
#include <string>
using namespace std;

string convert(string s, int numRows) {
    if (s.length() <= 1) {
        return s;
    }
    string *str = new string[numRows];
    int len     = s.length();

    int row  = 0;
    int step = 1;
    for (int i = 0; i < len; ++i) {
        str[row].push_back(s[i]);

        if (0 == row) {
            step = 1;
        } else if (row == numRows - 1) {
            step = -1;
        }

        row += step;
    }

    s.clear();
    for (int j = 0; j < numRows; ++j) {
        s.append(str[j]);
    }
    return s;
}

int main() {
    string a = "AB";
    cout << convert(a, 1);
}
