#include "system.h"
#include "altera_avalon_pio_regs.h"
#include <unistd.h>
#include "sys\alt_irq.h"
#include "sys\alt_stdio.h"
#define DEBOUNCE 100000

static void buttons_isr(void* context) {
	volatile int* button_val_ptr = (volatile int *) context;
	*button_val_ptr = IORD_ALTERA_AVALON_PIO_EDGE_CAP(BUTTONS_BASE);
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(BUTTONS_BASE, 0x3);
	usleep(DEBOUNCE);
}

int main() {
	volatile int buttons;
	int led = 0x00;
	buttons = 0;

	IOWR_ALTERA_AVALON_PIO_DATA(LED_BASE, led);
	IOWR_ALTERA_AVALON_PIO_IRQ_MASK(BUTTONS_BASE, 0x1);
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(BUTTONS_BASE, 0x1);
	alt_ic_isr_register(BUTTONS_IRQ_INTERRUPT_CONTROLLER_ID, BUTTONS_IRQ, buttons_isr, (void*)&buttons, 0x0);

	alt_printf("Процессор Nios II запущен!\n");
	alt_printf("Нажмите кнопку pba\n\n");

	while(1) {
		if (buttons != 0) {
			alt_printf("Нажата кнопка pba\n");
			if (led == 0x80 || led == 0x00) led = 0x01;
			else led = led << 1;
			buttons = 0;
			IOWR_ALTERA_AVALON_PIO_DATA(LED_BASE, ~led);
		}
	}
	return 0;
}
