.global led_on 
led_on:

	.EQU clk_adrs,0X40023800 @rcc adrs
	.EQU value1 ,0X00000008 @idr adrs
	LDR r0 , =clk_adrs
	LDR r1 ,= value1	
	STR R1 , [R0 , #0X30]
	
	.EQU GD_ADRS, 0X40020C00 @gpiod adrs
	LDR R2 , =GD_ADRS
	.EQU value_mdr ,0X55000000 @moder adrs
	LDR R3 , =value_mdr
	STR R3 , [R2 ,#0X00 ]
	
	.EQU value_bsrr ,0X0000f000 @bsrr
	LDR R4 , =value_bsrr
	STR R4 , [R2 ,#0X18 ]
	
	BX  LR