#include <iostream>
#include <stack>
#include <unordered_map>

using namespace std;

// Token types
enum TokenType {
    INT,
    IDENTIFIER,
    OPEN_PAREN,
    CLOSE_PAREN,
    ASTERISK,
    PLUS,
    MINUS,
    DOLLAR,
    ERROR
};

// Token structure
struct Token {
    TokenType type;
    string value;
};

// LL(1) parsing table
unordered_map<char, unordered_map<TokenType, string>> parsingTable = {
    {'S', {{INT, "int"}, {IDENTIFIER, "identifier"}, {'(', "(E)"}}},
    {'E', {{INT, "int"}, {IDENTIFIER, "identifier"}, {'(', "(E)"}}}
};

// Lexer function
Token lexer(const string& input, size_t& currentPosition) {
    if (currentPosition >= input.size()) {
        return {DOLLAR, "$"};
    }

    char currentChar = input[currentPosition];
    currentPosition++;

    switch (currentChar) {
        case 'i':
            return {IDENTIFIER, "identifier"};
        case '(':
            return {OPEN_PAREN, "("};
        case ')':
            return {CLOSE_PAREN, ")"};
        case '*':
            return {ASTERISK, "*"};
        case '+':
            return {PLUS, "+"};
        case '-':
            return {MINUS, "-"};
        default:
            return {INT, string(1, currentChar)};
    }
}

// Parser function
void parser(const string& input) {
    stack<char> parseStack;
    size_t currentPosition = 0;

    parseStack.push('S');
    parseStack.push('$');

    while (!parseStack.empty()) {
        char stackTop = parseStack.top();
        Token currentToken = lexer(input, currentPosition);

        if (isalpha(stackTop) || stackTop == '(' || stackTop == ')' || stackTop == '*' || stackTop == '+' || stackTop == '-') {
            if (stackTop == currentToken.type) {
                parseStack.pop();
            } else {
                cout << "Syntax Error: Unexpected token '" << currentToken.value << "' at position " << currentPosition << endl;
                return;
            }
        } else {
            if (parsingTable[stackTop].find(currentToken.type) != parsingTable[stackTop].end()) {
                parseStack.pop();
                string production = parsingTable[stackTop][currentToken.type];

                for (int i = production.size() - 1; i >= 0; --i) {
                    parseStack.push(production[i]);
                }
            } else {
                cout << "Syntax Error: Unexpected token '" << currentToken.value << "' for nonterminal '" << stackTop << "' at position " << currentPosition << endl;
                return;
            }
        }
    }

    cout << "Parsing successful" << endl;
}

int main() {
    string input;
    cout << "Enter the string to parse: ";
    getline(cin, input);

    parser(input);

    return 0;
}