#include "armstrong_numbers.h"
#include <math.h>

bool is_armstrong_number(int candidate) {
int num_digits = floor(log10(candidate)) + 1;
int sum = 0;
int n = candidate;
while (n > 0) {
int digit = n % 10;
sum += pow(digit, num_digits);
n /= 10;
}
return sum == candidate;
}