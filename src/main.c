#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <factorial.h>

void showHelp()
{
	printf("factorial [option] <input>\n\n"
  "  Option\n"
  "    --help        Display this messages and exit.\n\n"
  "  Example\n"
  "    $ factorial 5\n");
	exit(1);
}

int main(int argc, char **argv)
{
	if (argc < 2 || (strcmp(argv[1], "--help") == 0)) {
		showHelp();
	}

	const int input = atoi(argv[1]);
	long n = factorial(input);

	printf("  %d! = %ld\n", input, n);

	return 0;
}
