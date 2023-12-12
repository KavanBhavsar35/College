/*
This expression converter is made by 
	Khush Panchal(226170307075),
	Kavan Bhavsar (226170307015) and 
	Bhavya Bagadia (226170307004)
*/

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#include <windows.h>
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
            if (isEmpty(&stack)) {
                fprintf(stderr, "Error: Mismatched parentheses\n");
                return;
            }
            pop(&stack);
            i++;
        } else if (isOperator(infix[i])) {
            while (!isEmpty(&stack) && precedence(peek(&stack)) >= precedence(infix[i])) {
                postfix[j++] = pop(&stack);
            }
            push(&stack, infix[i++]);
        } else {
            fprintf(stderr, "Error: Invalid character '%c' in the infix expression\n", infix[i]);
			return;
	    }
    }

    while (!isEmpty(&stack)) {
        postfix[j++] = pop(&stack);
    }

    postfix[j] = '\0';

    // Check for remaining unmatched '('
    while (!isEmpty(&stack)) {
        if (peek(&stack) == '(' || peek(&stack) == ')') {
            fprintf(stderr, "Error: Mismatched parentheses\n");
            return;
        }
        pop(&stack);
    }
}


void banner() {
    printf(" ___      __   __   ___  __   __     __      \n");
    printf("|__  \\_/ |__) |__) |__  /__` /__` | /  \\ |\\ |\n");
    printf("|___ / \\ |    |  \\ |___ .__/ .__/ | \\__/ | \\|\n");
	printf("  __   __             ___  __  ___  ___  __  \n");     
	printf(" /  ` /  \\ |\\ | \\  / |__  |__)  |  |__  |__) \n");      
	printf(" \\__, \\__/ | \\|  \\/  |___ |  \\  |  |___ |  \\ \n\n");      
}
void reverseString(char str[]) {
    int length = strlen(str);
    int start = 0;
    int end = length - 1;

    while (start < end) {
        char temp = str[start];
        str[start] = str[end];
        str[end] = temp;

        start++;
        end--;
    }
}
void revstr(char *str1)  {  
    int i, len, temp;  
    len = strlen(str1);  
      
    for (i=0;i<len/2;i++)  {  
        temp = str1[i];  
        str1[i] = str1[len - i - 1];  
        str1[len - i - 1] = temp;  
    }  
    for (i = 0; i < len; i++)  { 
        if (str1[i] == '(') {
            str1[i] = ')';
        } else if (str1[i] == ')') {
            str1[i] = '(';
        } else {
        	continue;
		}
	}	
}  
int main() {
    char infix[MAX_SIZE], postfix[MAX_SIZE];
    char ch;
    int len;
    do {
    	system("cls");
		banner();
	    printf("1) Infix to Postfix\n");
	    printf("2) Infix to Prefix\n");
	    printf("3) Exit\n");
	    printf("Enter your choice: ");
	
	    scanf(" %c", &ch);
	    getchar(); 
	
	    switch (ch) {
	        case '1':
	            len = 0;
	            printf("\n\nEnter an infix expression: ");
	            fgets(infix, MAX_SIZE, stdin);
	
	            len = strlen(infix);
	            if (infix[len - 1] == '\n') {
	                infix[len - 1] = '\0';
	            }
	
	            infixToPostfix(infix, postfix);
	
	            printf("\n\nPostfix expression: %s\n\n\n\n", postfix);
				system("pause");

	            break;
	        case '2':
	            len = 0;
	            printf("\n\nEnter an infix expression: ");
	            fgets(infix, MAX_SIZE, stdin);
	
	            len = strlen(infix);
	            if (infix[len - 1] == '\n') {
	                infix[len - 1] = '\0';
	            }
	            revstr(infix);
	
	            infixToPostfix(infix, postfix);
	            revstr(postfix);
	
	            printf("\n\nPrefix expression: %s\n\n\n\n", postfix);
	            system("pause");
	            break;
	        case '3':
	            break;
	        default:
	        	printf("\n\n Please choose any one from above List !!\n\n\n\n");
	        	system("pause");
	    }
	} while (ch != '3');
    return 0;
}
