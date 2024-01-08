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
    if (s->top==-1) {
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

int isOperand(char ch) {
    return isdigit(ch) || ch == '.';
}

int isOperator(char ch) {
    return ch == '+' || ch == '-' || ch == '*' || ch == '/';
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

void banner(){
	printf(" 88888888b                                                       oo                   \n");
	printf(" 88                                                                                   \n");
	printf(" 88aaaa    dP.  .dP 88d888b. 88d888b. .d8888b. .d8888b. .d8888b. dP .d8888b. 88d888b. \n");
	printf(" 88         `8bd8'  88'  `88 88'  `88 88ooood8 Y8ooooo. Y8ooooo. 88 88'  `88 88'  `88 \n");
	printf(" 88         .d88b.  88.  .88 88       88.  ...       88       88 88 88.  .88 88    88 \n");
	printf(" 88888888P dP'  `dP 88Y888P' dP       `88888P' `88888P' `88888P' dP `88888P' dP    dP \n");
	printf("                    88                                                                \n");
	printf("                    dP                                                                \n");
	printf(" a88888b.                                                dP                           \n");
	printf("d8'   `88                                                88                           \n");
	printf("88        .d8888b. 88d888b. dP   .dP .d8888b. 88d888b. d8888P .d8888b. 88d888b.       \n");
	printf("88        88'  `88 88'  `88 88   d8' 88ooood8 88'  `88   88   88ooood8 88'  `88       \n");
	printf("Y8.   .88 88.  .88 88    88 88 .88'  88.  ... 88         88   88.  ... 88             \n");
	printf(" Y88888P' `88888P' dP    dP 8888P'   `88888P' dP         dP   `88888P' dP             \n");
	printf("                                                                                      \n");
                                                                                      
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
struct evalst {
    int top;
    unsigned capacity;
    float* array;
};
void initEval(struct evalst* st, unsigned capacity) {
    st->top = -1;
    st->capacity = capacity;
    st->array = (float*)malloc(st->capacity * sizeof(float));
}

int isEvalOperand(char ch) {
    return isdigit(ch) || ch == '.';
}

int isEvalOperator(char ch) {
    return ch == '+' || ch == '-' || ch == '*' || ch == '/';
}
float evalPop(struct evalst* st) {
    if (st->top == -1) {
        printf("Error: st underflow\n");
        exit(EXIT_FAILURE);
    }
    return st->array[st->top--];
}
void evalPush(struct evalst* st, float item) {
    if (st->top == st->capacity - 1) {
        printf("Error: st overflow\n");
        exit(EXIT_FAILURE);
    }
    st->array[++st->top] = item;
}

float evaluatePostfix(char expr[]) {
    struct evalst st;
    initEval(&st, strlen(expr));

    int i = 0;
    while (expr[i] != '\0') {
        if (isEvalOperand(expr[i])) {
            float operand = 0;
            while (isEvalOperand(expr[i])) {
                operand = operand * 10 + (expr[i] - '0');
                i++;
            }
            if (expr[i] == '.') {
			    i++; // Skip the dot
			    float decimalPlace = 0.1;
			    while (isdigit(expr[i])) {
			        operand += (expr[i] - '0') * decimalPlace;
			        decimalPlace *= 0.1;
			        i++;
			    }
			}
            evalPush(&st, operand);
        } else if (isEvalOperator(expr[i])) {
            if (st.top < 1) {
                printf("Error: Insufficient operands for operator %c\n", expr[i]);
                exit(EXIT_FAILURE);
            }
            float operand2 = evalPop(&st);
            float operand1 = evalPop(&st);
            switch (expr[i]) {
                case '+':
                    evalPush(&st, operand1 + operand2);
                    break;
                case '-':
                    evalPush(&st, operand1 - operand2);
                    break;
                case '*':
                    evalPush(&st, operand1 * operand2);
                    break;
                case '/':
                    if (operand2 == 0) {
                        printf("Error: Division by zero\n");
                        exit(EXIT_FAILURE);
                    }
                    evalPush(&st, operand1 / operand2);
                    break;
            }
            i++;
        } else {
            i++;
        }
    }

    if (st.top != 0) {
        printf("Error: Invalid postfix expression\n");
        exit(EXIT_FAILURE);
    }

    return evalPop(&st);
}
int main() {
    char infix[MAX_SIZE], postfix[MAX_SIZE], expression[MAX_SIZE];
    char ch;
    int len;
    do {
    	system("cls");
		banner();
	    printf("1) Infix to Postfix\n");
	    printf("2) Infix to Prefix\n");
	    printf("3) Evaluate Prefix or Postfix expression\n");
	    printf("4) Exit\n");
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
	     	case '4':
	        	printf("\n\nExiting...\n\n\n\n");
	            break;
	        default:
	        	printf("\n\nInvalid Choice chose only from 1-4...\n\n\n\n");
	        	system("pause");
	        	break;
	        case '3':
			    printf("\n\nEnter postfix or prefix expression: ");
			    fgets(expression, MAX_SIZE, stdin);
			    if (expression[0]=='+' || expression[0]=='-' || expression[0]=='*' || expression[0]=='/'){
					revstr(expression);
				}
			    float result = evaluatePostfix(expression);				
			    printf("\n\nResult: %.2f\n\n\n\n", result);
			    system("pause");
			    break;
	        
	    }
	} while (ch != '4');


    return 0;
}
