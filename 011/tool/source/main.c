/*
 * main.c
 *
 *  Created on: Oct 10, 2022
 *      Author: ADMIN
 */

#include <string.h>
#include "stm32f407xx.h"

int main(void)
{

	GPIO_Handle_t GpioLed;

	// this is led gpio configuration
	GpioLed.pGPIOx = GPIOC;
	GpioLed.GPIO_PinConfig.GPIO_PinNumber = GPIO_PIN_NO_11;
	GpioLed.GPIO_PinConfig.GPIO_PinMode = GPIO_MODE_OUT;
	GpioLed.GPIO_PinConfig.GPIO_PinSpeed = GPIO_SPEED_LOW;
	GpioLed.GPIO_PinConfig.GPIO_PinOPType = GPIO_OP_TYPE_PP;
	GpioLed.GPIO_PinConfig.GPIO_PinPuPdControl = GPIO_NO_PUPD;
	GPIO_Init(&GpioLed);

	GPIO_WriteToOutputPin(GPIOC, GPIO_PIN_NO_11, GPIO_PIN_SET);

	while (1)
		;
}
