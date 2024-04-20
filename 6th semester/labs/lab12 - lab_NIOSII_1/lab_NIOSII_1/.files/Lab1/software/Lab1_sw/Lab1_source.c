#include "system.h"
#include "altera_avalon_pio_regs.h"
#include <unistd.h>
int main(void)
{
int sw;
int count = 255;
while( 1 )
{
usleep (500000);
sw = IORD_ALTERA_AVALON_PIO_DATA(PIO_SW_BASE);/* read sw[0] value */
if (sw == 0x1) count++; /* Continue 0-ff counting loop. */
else count--; /* Continue ff-0 counting loop. */
IOWR_ALTERA_AVALON_PIO_DATA( PIO_LED_BASE, ~count );
}
return 0;
}
