#include <stdio.h>
#include <string.h>

int binaryToDecimal(char binary[]) 
 {
    int decimal = 0, len = strlen(binary);
    for (int i = 0; i < len; i++) {
        decimal = decimal * 2 + (binary[i] - '0');
    }
    return decimal;
}

void decimalToBinary(int num, int bits) 
{
    for (int i = bits - 1; i >= 0; i--) {
        printf("%d", (num >> i) & 1);
    }
}

int main() 
{
    char binary[20];
    int shift;

    printf("Enter a binary number: ");
    scanf("%s", binary);

    printf("Enter shift count: ");
    scanf("%d", &shift);

    int decimal = binaryToDecimal(binary);
    int bit_length = strlen(binary);
	int shifted = decimal >> shift;

    printf("Result after arithmetic right shift: ");
    decimalToBinary(shifted, bit_length);
    printf("\n");
	return 0;
}

