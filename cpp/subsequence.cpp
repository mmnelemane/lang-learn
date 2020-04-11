#include <iostream>
#include <string>
#include <fstream>

using namespace std;

void main() {
    string inputFile;
    string sWord;
    ifstream fin;
    string line;
    int subseqLen; 
    int maxSeq = 0;
    string maxSubseqWord;

    cout << "Type the name of input strings file: ";
    cin >> inputFile;
    cout << "Type the word to search subsequence of: ";
    cin >> sWord;

    fin.open(inputFile);
    while(fin) {
        getline(fin, line);
        subseqLen = isSubsequence(line, sWord);
        if (subseqLen > maxSeq) {
            maxSeq = subseqLen;
            maxSubseqWord = line;
        }
    }
    return 
}

int isSubSequence(istring Word, string sWord) {
    return -1;
}




