#include "system.h"
#include "altera_avalon_pio_regs.h"
#include <unistd.h>

#define EQ_ONE 0x01
#define DEBOUNCE 30000

int main(void) {
	int sw;
	int led = 0x00;

	while (1) {

		sw = IORD_ALTERA_AVALON_PIO_DATA(PIO_SW_BASE);

		if (sw != EQ_ONE) {
			if (led >= 0x80 || led == 0x00)
				led = 0x01;
			else
				led = led << 1;
			IOWR_ALTERA_AVALON_PIO_DATA(PIO_LED_BASE, ~led);

			usleep(DEBOUNCE);
			while (sw != EQ_ONE)
			sw = IORD_ALTERA_AVALON_PIO_DATA(PIO_SW_BASE);
			usleep(DEBOUNCE);
		}
	}
}
