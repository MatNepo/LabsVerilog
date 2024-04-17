#include "system.h"
#include "altera_avalon_pio_regs.h"
#include <unistd.h>

#define EQ_ONE 0x01
#define DEBOUNCE 30000

int main(void) {
	int* psw = (int*) 0x9000;
	int* led_out = (int*) 0x9010;
	int led = 0x80;
	*led_out = 0xF0;
	while (1) {

		if (*psw != EQ_ONE) {
			if (led > 0x80 || led == 0x01)
				led = 0x80;
			else
				led = led >> 1;
			*led_out = led;

			usleep(DEBOUNCE);
			while (*(psw) != EQ_ONE);
			usleep(DEBOUNCE);
		}
	}
}
