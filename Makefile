#VHDL FSM Example
fsm:
	ghdl -a fsmBehav.vhd
	ghdl -a fsmBehav_tb.vhd
	ghdl -e fsmBehav_tb
	ghdl -r fsmBehav_tb  --wave=./fsmBehav_tb.ghw --stop-time=150ns

bidirectional:
	ghdl -a bidirectionalBehav.vhd
	ghdl -a bidirectionalBehav_tb.vhd
	ghdl -e bidirectionalBehav_tb
	ghdl -r bidirectionalBehav_tb  --wave=./bidirectionalBehav_tb.ghw --stop-time=200ns

comparator:
	ghdl -a Comparator_16Bits.vhd
	ghdl -a Comparator_16Bits_tb.vhd
	ghdl -e Comparator_16Bits_tb
	ghdl -r Comparator_16Bits_tb  --wave=./Comparator_16Bits_tb.ghw --stop-time=150ns
	
adder16:
	ghdl -a Full_Adder.vhd
	ghdl -a Ripple_Adder_4Bit.vhd
	ghdl -a Ripple_Adder_8Bits.vhd
	ghdl -a Ripple_Adder_16Bits.vhd
	ghdl -a Ripple_Adder_16Bits_tb.vhd
	ghdl -e Ripple_Adder_16Bits_tb
	ghdl -r Ripple_Adder_16Bits_tb  --wave=./Ripple_Adder_16Bits_tb.ghw --stop-time=170ns
	
multiplier:
	ghdl -a Full_Adder.vhd
	ghdl -a Ripple_Adder_4Bit.vhd
	ghdl -a Ripple_Adder_8Bits.vhd
	ghdl -a Ripple_Adder_16Bits.vhd
	ghdl -a Ripple_Adder_32Bits.vhd
	ghdl -a SingleBitMultiplier_16.vhd
	ghdl -a Multiplier_16Bits.vhd
	ghdl -a Multiplier_16Bits_tb.vhd
	ghdl -e Multiplier_16Bits_tb
	ghdl -r Multiplier_16Bits_tb  --wave=./Multiplier_16Bits_tb.ghw --stop-time=170ns
		
alu:
	ghdl -a Full_Adder.vhd
	ghdl -a Ripple_Adder_4Bit.vhd
	ghdl -a Ripple_Adder_8Bits.vhd
	ghdl -a Ripple_Adder_16Bits.vhd
	ghdl -a Ripple_Adder_32Bits.vhd
	ghdl -a SingleBitMultiplier_16.vhd
	ghdl -a Multiplier_16Bits.vhd
	ghdl -a Comparator_16Bits.vhd
	ghdl -a Subtractor_16Bits.vhd
	ghdl -a aluStructural.vhd
	ghdl -a aluStructural_tb.vhd
	ghdl -e aluStructural_tb
	ghdl -r aluStructural_tb  --wave=./aluStructural_tb.ghw --stop-time=650ns

subtractor:
	ghdl -a Full_Adder.vhd
	ghdl -a Ripple_Adder_4Bit.vhd
	ghdl -a Ripple_Adder_8Bits.vhd
	ghdl -a Ripple_Adder_16Bits.vhd
	ghdl -a Subtractor_16Bits.vhd
	ghdl -a Subtractor_16Bits_tb.vhd
	ghdl -e Subtractor_16Bits_tb
	ghdl -r Subtractor_16Bits_tb  --wave=./Subtractor_16Bits_tb.ghw --stop-time=170ns
	
verilog: 
	yosys -m ghdl -p 'ghdl Full_Adder.vhd -e Full_Adder; write_verilog Full_Adder.v'	
	yosys -m ghdl -p 'ghdl Ripple_Adder_4Bit.vhd -e Ripple_Adder_4Bit; write_verilog Ripple_Adder_4Bit.v'
	yosys -m ghdl -p 'ghdl Ripple_Adder_8Bits.vhd -e Ripple_Adder_8Bits; write_verilog Ripple_Adder_8Bits.v'
	yosys -m ghdl -p 'ghdl Ripple_Adder_16Bits.vhd -e Ripple_Adder_16Bits; write_verilog Ripple_Adder_16Bits.v'
	yosys -m ghdl -p 'ghdl Ripple_Adder_32Bits.vhd -e Ripple_Adder_32Bits; write_verilog Ripple_Adder_32Bits.v'
	yosys -m ghdl -p 'ghdl Subtractor_16Bits.vhd -e Subtractor_16Bits; write_verilog Subtractor_16Bits.v'
	yosys -m ghdl -p 'ghdl SingleBitMultiplier_16.vhd -e SingleBitMultiplier_16; write_verilog SingleBitMultiplier_16.v'
	yosys -m ghdl -p 'ghdl Multiplier_16Bits.vhd -e Multiplier_16Bits; write_verilog Multiplier_16Bits.v'
	yosys -m ghdl -p 'ghdl Comparator_16Bits.vhd -e Comparator_16Bits; write_verilog Comparator_16Bits.v'
	yosys -m ghdl -p 'ghdl aluStructural.vhd -e aluStructural; write_verilog aluStructural.v'
		
clean:
	rm *.o
	rm *.cf
	rm *.ghw
	rm fsmbehav
	rm fsmbehav_tb
