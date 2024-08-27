			.global led_on 
			led_on:
			@led_on FUNCTION
			.EQU clk_adrsl,0X3800 @rcc adrs
			.EQU clk_adrsh,0X4002
			.EQU value1l ,0X0008 @idr adrs
			.EQU value1h,0X0000
			MOV r0 , clk_adrsl
			MOVT r0 , clk_adrsh
			MOV r1 , value1l
			MOVT r1 , value1h
			STR R1 , [R0 , #0X30]
			.EQU GD_ADRSh, 0X4002 @gpiod adrs
			.EQU GD_ADRSl, 0X0C00c
			MOV R2 , GD_ADRSl
			MOVT R2 , GD_ADRSh
			.EQU value_mdrl ,0X0000 @moder adrs
			.EQU value_mdrh,0X5500
			MOV R3 , value_mdrl
			MOVT R3 , value_mdrh
			STR R3 , [R2 ,#0X00 ]
			.EQU value_bsrrl ,0Xf000 @bsrr
			.EQU value_bsrrh,0X0000
			MOV R4 , value_bsrrl
			MOVT R4 , value_bsrrh
			STR R4 , [R2 ,#0X18 ]
			
			BX  LR