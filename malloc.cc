/**
 * Copying and distribution of this file, with or without modification,
 * are permitted in any medium without royalty provided the copyright
 * notice and this notice are preserved.  This file is offered as-is,
 * without any warranty.
 */
#include <cstdlib>


int
main(void)
{
	char *a;
	size_t i;

	for (i = 0; i < 40000000UL; i++)
		a = (char *)malloc(16);

	return 0;
}
