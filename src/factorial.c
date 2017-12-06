#include <factorial.h>

long factorial(int input)
{
	if (input == 0) {
		return 1;
	}

	return (input * factorial(input - 1));
}
