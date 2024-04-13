#include <unistd.h>

int main(void)
{
    int *psw = (int*) 0x8000;
    int *pled = (int*) 0x8010;
    int count = 64;

    while(1)
    {
        usleep(100000);
        if (*psw == 0x1)
            count++; /* Continue 0-ff counting loop. */
        else
            count--; /* Continue ff-0 counting loop. */

        *pled = ~count;
    }

    return 0;
}
