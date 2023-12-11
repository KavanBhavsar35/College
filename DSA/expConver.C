#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>

#define MAX_SIZE 50

struct Stack {
    int top;
    float items[MAX_SIZE];
};

void initialize(struct Stack *s) {
    s->top = -1;
}

int isEmpty(struct Stack *s) {
    return s->top == -1;
}

void push(struct Stack *s, float value) {
    if (s->top == MAX_SIZE - 1) {
        printf("Internal error ocuured\n");
        exit(EXIT_FAILURE);
    }
    s->items[++s->top] = value;
}

float pop(struct Stack *s) {
    if (isEmpty(s)) {
        printf("Internal error ocuured\n");
        exit(EXIT_FAILURE);
    }
    return s->items[s->top--];
}

float peek(struct Stack *s) {
    if (isEmpty(s)) {
        printf("Internal error ocuured\n");
        exit(EXIT_FAILURE);
    }
    return s->items[s->top];
}

int isOperator(char c) {
    return c == '+' || c == '-' || c == '*' || c == '/';
}

int precedence(char op) {
    if (op == '+' || op == '-')
        return 1;
    else if (op == '*' || op == '/')
        return 2;
    return 0;
}

void infixToPostfix(char infix[], char postfix[]) {
    struct Stack stack;
    initialize(&stack);

    int i = 0, j = 0;
    while (infix[i] != '\0') {
        if (isdigit(infix[i]) || infix[i] == '.') {
            postfix[j++] = infix[i++];
        } else if (infix[i] == '(') {
            push(&stack, infix[i++]);
        } else if (infix[i] == ')') {
            while (!isEmpty(&stack) && peek(&stack) != '(') {
                postfix[j++] = pop(&stack);
            }
            pop(&stack);
            i++;
        } else if (isOperator(infix[i])) {
            while (!isEmpty(&stack) && precedence(peek(&stack)) >= precedence(infix[i])) {
                postfix[j++] = pop(&stack);
            }
            push(&stack, infix[i++]);
        } else {
            i++;
        }
    }

    while (!isEmpty(&stack)) {
        postfix[j++] = pop(&stack);
    }

    postfix[j] = '\0';
}

float evaluatePostfix(char postfix[]) {
    struct Stack stack;
    initialize(&stack);

    int i = 0;
    while (postfix[i] != '\0') {
        if (isdigit(postfix[i]) || postfix[i] == '.') {
            float operand = 0;
            while (isdigit(postfix[i]) || postfix[i] == '.') {
                operand = operand * 10 + (postfix[i] - '0');
                i++;
            }
            push(&stack, operand);
        } else if (isOperator(postfix[i])) {
            float operand2 = pop(&stack);
            float operand1 = pop(&stack);
            switch (postfix[i]) {
                case '+':
                    push(&stack, operand1 + operand2);
                    break;
                case '-':
                    push(&stack, operand1 - operand2);
                    break;
                case '*':
                    push(&stack, operand1 * operand2);
                    break;
                case '/':
                    push(&stack, operand1 / operand2);
                    break;
            }
            i++;
        } else {
            i++;
        }
    }

    return pop(&stack);
}

int main() {
    char infix[MAX_SIZE];
    printf("Enter an infix expression: ");
    fgets(infix, MAX_SIZE, stdin);

    int len = strlen(infix);
    if (infix[len - 1] == '\n') {
        infix[len - 1] = '\0';
    }
	
    char postfix[MAX_SIZE];
    infixToPostfix(infix, postfix);

    printf("Postfix expression: %s\n", postfix);

    float result = evaluatePostfix(postfix);
    printf("Result: %.2f\n", result);

    return 0;
}