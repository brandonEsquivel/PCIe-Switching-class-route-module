#Verilog

# Making verilog makefile
# Makefile to simulate Verilog HDL designs under OSX.
###
######## belindabrownr@gmail.com
###


# Makefile logic:
# To create this file you need these files:
# $ @ replace left
# $ ^ right


#******************************************************************************
#				MARKS
#******************************************************************************
# 1. For mux 2:1 ---------- mux21
# 2. For demux 1:2  10 bits ---------- demux12
# 3. For demux 1:2 8 bits ---------- demux12_8
# 4. Parallel- Serial ---------- ptos
# 5. Serial-Parallel ---------- serno

# 6. Data Flow Control ---------- dfcontrol

#### 		First in First Out
# 7. For fifo 8x10 ---------- fifo
# 8. For fifo 6x8 ---------- fifo6x8
# 9. For fifo 4x8 ---------- fifo4x8

####				Memories
# 10. For memory 8x10 ---------- memory
# 11. For memory 6x8 ---------- memory6x8
# 12. For memory 4x8 ---------- memory4x8

#### 				Layers
# 13. For trafic class clasification ---------- class
# 14. Routing port ---------- route
# 15. Serialization  layer---------- serial

####				Devices
# 16. Device 1 ---------- disp1
# 17. Device 2 ---------- disp2
# 18. Device 3 ---------- disp3
>>>>>>> bb383c9378a58765f93ccb9f41fddfd8d7993278


all:

#******************************************************************************
#										TARGETS
#******************************************************************************
### 						YOSYS 		use $make	y<mark>
# To generate the structural design of the
# behavioral design automatically through synthesis
#It is defined as a roughly RTL (Register Transfer Level)
#synthesizer that allows you to convert the HDL (Hardware
# Description Language) code into an electronic scheme.
# Coming to show the components connected to each other what
# is usually called RTL network list which is associated with
# the level of registry transfer. Considering that what it allows
# is to model a synchronous digital circuit in terms of digital signal
# flow (this being data) relating it to the hardware registers and the
# logical operations that are carried out in each signal.


### 						SED				use $make	r<mark>
# Replaces on the synthesized file the name module,
# because for making the stuctural decription we use the
# behavioral on yosys

#### 					 IVERILOG 		use $make v<mark>
# It is defined as an HDL (Hardware Description Language),
#  this being a modeled hardware language, that is, it allows
#  describing a simulation of digital circuits. It can be seen
# as the tool that allows to provide the specifications to carry
# out a physical component which is being modeled.
# 	Example of command:
# iverilog -o ./vvp/TestBench_21_2.vvp ./TestBenchAUTONST/TestBench_21_2.v
# Its automatic, because each time you are asked for a vvp
# you need one with con.v

### 					GTKWAVE   		use $make gtkwave<mark>
# We can define it as a visualization of simulation results
# where one of its advantages is that by means of a visualization
# of signal waves we can understand the problem when it
# is found by using the testbench.

#******************************************************************************
# Modify this part with your own folders paths.

DIAGRAMS_GENERATED = ./diagrams_generated/

LIB = ./lib/

LOG_TXT = ./log_txt/

SRC = ./src/
_MUX21 = mux2x1.v
_DEMUX12 = demux1x2.v
_DEMUX12_8 = demux1x2_8_behav.v
_FIFO = fifo.v
_FIFO6x8 = fifo_6x8.v
_FIFO4x8 = fifo_4x8.v
_MEMORY = memory.v
_MEMORY6x8 = memory_6x8.v
_MEMORY4x8 = memory_4x8.v
_CLASS = class.v
_ROUTING= routing.v
_DFC = df_control.v
_SERIAL = paratoserial.v
_PTOS = paralelltoserial.v
_SERIEPARLALELO = serieparalelo.v
_D1 = disp1.v
_D2 = disp2.v
_D3 = disp3.v



SYN = ./syn/
_SMUX21 = mux2x1_syn.v
_SDEMUX12 = demux1x2_syn.v
_SDEMUX12_8 = demux1x2_8_behav_syn.v
_SFIFO = fifo_syn.v
_SFIFO6x8 = fifo_6x8_syn.v
_SFIFO4x8 = fifo_4x8_syn.v
_SMEMORY = memory_syn.v
_SMEMORY6x8 = memory_6x8_syn.v
_SMEMORY4x8 = memory_4x8_syn.v
_SCLASS = class_syn.v
_SROUTING= routing_syn.v
_SDFC= dfcontrol_syn.v
_SSERIAL = paratoserial_syn.v
_SPTOS = paralelltoserial_syn.v
_SSERIEPARLALELO = serieparalelo_syn.v
_SD1 = disp1_syn.v
_SD2 = disp2_syn.v
_SD3 = disp3_syn.v



TESTBENCHES = ./testbenches/
_TB_MUX21 =  tb_mux21.v
_TB_DEMUX12 = tb_demux12.v
_TB_DEMUX12_8 = tb_demux12_8.v
_TB_FIFO = tb_fifo.v
_TB_FIFO6x8 = tb_fifo_6x8.v
_TB_FIFO4x8 = tb_fifo_4x8.v
_TB_MEMORY = tb_memory.v
_TB_MEMORY6x8 = tb_memory_6x8.v
_TB_MEMORY4x8 = tb_memory_4x8.v
_TB_CLASS = tb_class.v
_TB_ROUTING= tb_routing.v
_TB_DFC= tb_dfcontrol.v
_TB_SERIAL = tb_paratoserial.v
_TB_PTOS = tb_ptos.v
_TB__SERIEPARLALELO = tb_stop.v
_TB_D1 = tb_disp1.v
_TB_D2 = tb_disp2.v
_TB_D3 = tb_disp3.v





TESTERS = ./testers/
_T_MUX21 = t_mux21.v
_T_DEMUX12 = t_demux12.v
_T_DEMUX12_8 = t_demux12_8.v
_T_FIFO = t_fifo.v
_T_FIFO6x8 = t_fifo_6x8.v
_T_FIFO4x8 = t_fifo_4x8.v
_T_MEMORY = t_memory.v
_T_MEMORY6x8 = t_memory_6x8.v
_T_MEMORY4x8 = t_memory_4x8.v
_T_CLASS = t_class.v
_T_ROUTING= t_routing.v
_T_DFC=	t_dfcontrol.v
_T_SERIAL = t_paratoserial.v
_T_PTOS = t_ptos.v
_T__SERIEPARLALELO = t_stop.v
_T_D1 = t_disp1.v
_T_D2 = t_disp2.v
_T_D3 = t_disp3.v


_VCD_MUX21 = mux21.vcd
_VCD_DEMUX12 = demux12.vcd
_VCD_DEMUX12_8 = demux12_8.vcd
_VCD_FIFO = fifo.vcd
_VCD_FIFO6x8 = fifo6x8.vcd
_VCD_FIFO4x8 = fifo4x8.vcd
_VCD_MEMORY = memory.vcd
_VCD_MEMORY6x8 = memory6x8.vcd
_VCD_MEMORY4x8 = memory4x8.vcd
_VCD_CLASS = class.vcd
_VCD_ROUTING= routing.vcd
_VCD_DFC= dfcontrol.vcd
_VCD_SERIAL = paratoserial.vcd
_VCD_PTOS = ptos.vcd
_VCD__STOP = stop.vcd
_VCD_D1 = disp1.vcd
_VCD_D2 = disp2.vcd
_VCD_D3 = disp3.vcd




OVVP = ./vvp/
_VVP_MUX21 = mux21.vvp
_VVP_DEMUX12 = demux12.vvp
_VVP_DEMUX12_8 = demux12_8.vvp
_VVP_FIFO = fifo.vvp
_VVP_FIFO6x8 = fifo6x8.vvp
_VVP_FIFO4x8 = fifo4x8.vvp
_VVP_MEMORY = memory.vvp
_VVP_MEMORY6x8 = memory6x8.vvp
_VVP_MEMORY4x8 = memory4x8.vvp
_VVP_CLASS = class.vvp
_VVP_ROUTING= routing.vvp
_VVP_DFC= dfcontrol.vvp
_VVP_SERIAL	= paratoserial.vvp
_VVP_PTOS = ptos.vvp
_VVP__STOP = stop.vvp
_VVP_D1 = disp1.vvp
_VVP_D2 = disp2.vvp
_VVP_D3 = disp3.vvp


YOSYS = ./yosys/
_Y_MUX21 = mux21_y.ys
_Y_DEMUX12 = demux12_y.ys
_Y_DEMUX12_8 = demux12_8_y.ys
_Y_FIFO = fifo_y.ys
_Y_FIFO6x8 = fifo_6x8_y.ys
_Y_FIFO4x8 = fifo_4x8_y.ys
_Y_MEMORY = memory_y.ys
_Y_MEMORY6x8 = memory_6x8_y.ys
_Y_MEMORY4x8 = memory_4x8_y.ys
_Y_CLASS = class_y.ys
_Y_ROUTING= routing_y.ys
_Y_DFC= dfcontrol_y.ys
_Y_SERIAL = paratoserial_y.ys
_Y_PTOS = ptos_y.ys
_Y__STOP = serieparalelo_y.ys
_Y_D1 = disp1_y.ys
_Y_D2 = disp2_y.ys
_Y_D3 = disp3_y.ys

GTKWCONFIG = ./gtkwconfig/
_CONFIG_DEMUX12 = demux21.gtkw
_CONFIG_MUX12 	= mux21.gtkw
_CONFIG_FIFO 	= fifo.gtkw
_CONFIG_CLASS	= class.gtkw
_CONFIG_ROUTE	= routering.gtkw
_CONFIG_PTOS 	= ptos.gtkw
_CONFIG_SERIAL	= paratoserial.gtkw
_CONFIG_D1 		= disp1.gtkw


#******************************************************************************

# # IVERILOG
# %.vvp: %.v
# 	iverilog -o $@ $^


#******************************************************************************
####				MUX 		2:1			param 		10 bits by default
#******************************************************************************

allmux21: ymux21 rmux21 vmux21 gtkwavemux21


ymux21:
	yosys $(YOSYS)$(_Y_MUX21)

rmux21:
	sed -i ' s/mux21/mux21_syn/g' $(SYN)$(_SMUX21)

vmux21:
	iverilog -o $(OVVP)$(_VVP_MUX21) $(TESTBENCHES)$(_TB_MUX21)
	vvp $(OVVP)$(_VVP_MUX21) > $(LOG_TXT)$(_VVP_MUX21)_log.txt

#target phony
.PHONY: gtkwavemux21
gtkwavemux21:
	gtkwave $(_VCD_MUX21) $(GTKWCONFIG)$(_CONFIG_MUX12)


#******************************************************************************
#### 	 DEMUX 				1:2   param				10 bits by default
#******************************************************************************
alldemux21: ydemux12 rdemux12 vdemux12 gtkwavedemux12


ydemux12:
	yosys $(YOSYS)$(_Y_DEMUX12)

rdemux12:
	sed -i 's/demux12/demux12_syn/g' $(SYN)$(_SDEMUX12)

vdemux12:
	iverilog -o $(OVVP)$(_VVP_DEMUX12) $(TESTBENCHES)$(_TB_DEMUX12)
	vvp $(OVVP)$(_VVP_DEMUX12) > $(LOG_TXT)$(_VVP_DEMUX12)_log.txt

#target phony
.PHONY: gtkwavedemux12
gtkwavedemux12:
	gtkwave $(_VCD_DEMUX12) $(GTKWCONFIG)$(_CONFIG_DEMUX12)

#******************************************************************************
#### 			DEMUX 		1:2 	8 bits
#******************************************************************************

ydemux12_8:
	yosys $(YOSYS)$(_Y_DEMUX12_8)

rdemux12_8:
	sed -i 's/demux12_8/demux12_8_syn/g' $(SYN)$(_SDEMUX12_8)

vdemux12_8:
	iverilog -o $(OVVP)$(_VVP_DEMUX12_8) $(TESTBENCHES)$(_TB_DEMUX12_8)
	vvp $(OVVP)$(_VVP_DEMUX12_8) > $(LOG_TXT)$(_VVP_DEMUX12_8)_log.txt

#target phony
.PHONY: gtkwavedemux12_8
gtkwavedemux12_8:
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(_VCD_DEMUX12_8)


#******************************************************************************
#### 			PARALLEL TO SERIAL INDIVIDUAL MODULE
#******************************************************************************

yptos:
	yosys $(YOSYS)$(_Y_PTOS)

rptos:
	sed -i 's/paralelo_a_serial/paralelo_a_serial_syn/' $(SYN)$(_SPTOS)

vptos:
	iverilog -o $(OVVP)$(_VVP_PTOS) $(TESTBENCHES)$(_TB_PTOS)
	vvp $(OVVP)$(_VVP_PTOS) > $(LOG_TXT)$(_VVP_PTOS)_log.txt

#target phony
.PHONY: gtkwaveptos
gtkwaveptos:
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(_VCD_PTOS)


#******************************************************************************
#### 			 SERIAL TO PARALLEL INDIVIDUAL MODULE
#******************************************************************************

yserno:
	yosys $(YOSYS)$(_Y__STOP)

rserno:
	sed -i 's/serieparalelo/serieparalelo_syn/' $(SYN)$(_SSERIEPARLALELO)

vserno:
	iverilog -o $(OVVP)$(_VVP__STOP) $(TESTBENCHES)$(_TB__SERIEPARLALELO)
	vvp $(OVVP)$(_VVP__STOP) > $(LOG_TXT)$(_VVP__STOP)_log.txt

#target phony
.PHONY: gtkwaveserno
gtkwaveserno:
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(_VCD__STOP)


#******************************************************************************
#### 		dfcontrol
#******************************************************************************
ydfcontrol:
	yosys $(YOSYS)$(_Y_DFC)

rdfcontrol:
	sed -i 's/dfcontrol/dfcontrol_syn/g' $(SYN)$(_SDFC)

vdfcontrol:
	iverilog -o $(OVVP)$(_VVP_DFC) $(TESTBENCHES)$(_TB_DFC)
	vvp $(OVVP)$(_VVP_DFC) > $(LOG_TXT)$(_VVP_DFC)_log.txt

#target phony
.PHONY: gtkwavedfcontrol
gtkwavedfcontrol:
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(_VCD_DFC)


####################################
#### 					First in First Out
####################################
#******************************************************************************
#### 			FIFO 		PARAM
#******************************************************************************
allfifo: clean yfifo rfifo vfifo gtkwavefifo


yfifo:
	yosys $(YOSYS)$(_Y_FIFO)

rfifo:
	sed -i 's/fifo_param/fifo_param_syn/g; s/memory/memory_syn/g ' $(SYN)$(_SFIFO)

vfifo:
	iverilog -o $(OVVP)$(_VVP_FIFO) $(TESTBENCHES)$(_TB_FIFO)
	vvp $(OVVP)$(_VVP_FIFO) > $(LOG_TXT)$(_VVP_FIFO)_log.txt

#target phony
.PHONY: gtkwavefifo
gtkwavefifo:
	gtkwave $(_VCD_FIFO) $(GTKWCONFIG)$(_CONFIG_FIFO)

#******************************************************************************
#### 		FIFO 		6x8
#******************************************************************************
yfifo6x8:
	yosys $(YOSYS)$(_Y_FIFO6x8)

rfifo6x8:
	sed -i 's/fifo_6x8/fifo_6x8_syn/g; s/memory_6x8/memory_6x8_syn/g' $(SYN)$(_SFIFO6x8)

vfifo6x8:
	iverilog -o $(OVVP)$(_VVP_FIFO6x8) $(TESTBENCHES)$(_TB_FIFO6x8)
	vvp $(OVVP)$(_VVP_FIFO6x8) > $(LOG_TXT)$(_VVP_FIFO6x8)_log.txt

#target phony
.PHONY: gtkwavefifo6x8
gtkwavefifo6x8:
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(_VCD_FIFO6x8)


#******************************************************************************
#### 		FIFO 		4x8
#******************************************************************************
yfifo4x8:
	yosys $(YOSYS)$(_Y_FIFO4x8)

rfifo4x8:
	sed -i 's/fifo_4x8/fifo_4x8_syn/g; s/memory_4x8/memory_4x8_syn/g' $(SYN)$(_SFIFO4x8)

vfifo4x8:
	iverilog -o $(OVVP)$(_VVP_FIFO4x8) $(TESTBENCHES)$(_TB_FIFO4x8)
	vvp $(OVVP)$(_VVP_FIFO4x8) > $(LOG_TXT)$(_VVP_FIFO4x8)_log.txt

#target phony
.PHONY: gtkwavefifo4x8
gtkwavefifo4x8:
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(_VCD_FIFO4x8)


####################################
####				Memories
####################################
#******************************************************************************
#### 				MEMORY 8x10
#******************************************************************************
ymemory:
	yosys $(YOSYS)$(_Y_MEMORY)

rmemory:
	sed -i 's/memory/memory_syn/g' $(SYN)$(_SMEMORY)

vmemory:
	iverilog -o $(OVVP)$(_VVP_MEMORY) $(TESTBENCHES)$(_TB_MEMORY)
	vvp $(OVVP)$(_VVP_MEMORY) > $(LOG_TXT)$(_VVP_MEMORY)_log.txt

#target phony
.PHONY: gtkwavememory
gtkwavememory:
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(_VCD_MEMORY)

#******************************************************************************
#### 		MEMORY 6x8
#******************************************************************************
ymemory6x8:
	yosys $(YOSYS)$(_Y_MEMORY6x8)

rmemory6x8:
	sed -i 's/memory6x8/memory6x8_syn/g' $(SYN)$(_SMEMORY6x8)

vmemory6x8:
	iverilog -o $(OVVP)$(_VVP_MEMORY6x8) $(TESTBENCHES)$(_TB_MEMORY6x8)
	vvp $(OVVP)$(_VVP_MEMORY6x8) > $(LOG_TXT)$(_VVP_MEMORY6x8)_log.txt

#target phony
.PHONY: gtkwavememory6x8
gtkwavememory6x8:
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(_VCD_MEMORY6x8)


#******************************************************************************
#### 		MEMORY 4x8
#******************************************************************************
ymemory4x8:
	yosys $(YOSYS)$(_Y_MEMORY4x8)

rmemory4x8:
	sed -i 's/memory_4x8/memory_4x8_syn/g' $(SYN)$(_SMEMORY4x8)

vmemory4x8:
	iverilog -o $(OVVP)$(_VVP_MEMORY4x8) $(TESTBENCHES)$(_TB_MEMORY4x8)
	vvp $(OVVP)$(_VVP_MEMORY4x8) > $(LOG_TXT)$(_VVP_MEMORY4x8)_log.txt

#target phony
.PHONY: gtkwavememory4x8
gtkwavememory4x8:
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(_VCD_MEMORY4x8)


####################################
####				Layers
####################################

#******************************************************************************
#### 			CLASS
#******************************************************************************
allclass: clean yclass rclass vclass gtkwaveclass 


yclass:
	yosys $(YOSYS)$(_Y_CLASS)

rclass:
	sed -i 's/classswitching/classswitching_syn/g;  s/fifo_param/fifo_param_syn/g; s/demux12/demux12_syn/g; s/memory/memory_syn/g' $(SYN)$(_SCLASS)

vclass:
	iverilog -o $(OVVP)$(_VVP_CLASS) $(TESTBENCHES)$(_TB_CLASS)
	vvp $(OVVP)$(_VVP_CLASS) > $(LOG_TXT)$(_VVP_CLASS)_log.txt

#target phony
.PHONY: gtkwaveclass
gtkwaveclass:
	gtkwave $(_VCD_CLASS) $(GTKWCONFIG)$(_CONFIG_CLASS)

#******************************************************************************
#### 			ROUTING
#******************************************************************************
allroute: clean yroute rroute vroute gtkwaveroute

yroute:
	yosys $(YOSYS)$(_Y_ROUTING)

rroute:
	sed -i 's/router/router_syn/g;  s/fifo_param/fifo_param_syn/g; s/demux12/demux12_syn/g; s/memory/memory_syn/g; s/mux21/mux21_syn/g' $(SYN)$(_SROUTING)

vroute:
	iverilog -o $(OVVP)$(_VVP_ROUTING) $(TESTBENCHES)$(_TB_ROUTING)
	vvp $(OVVP)$(_VVP_ROUTING) > $(LOG_TXT)$(_VVP_ROUTING)_log.txt

#target phony
.PHONY: gtkwaveroute
gtkwaveroute:
	gtkwave $(_VCD_ROUTING) $(GTKWCONFIG)$(_CONFIG_ROUTE)

#******************************************************************************
#### 			PARALLEL TO SERIAL INDIVIDUAL MODULE
#******************************************************************************
allptos: clean yptos rptos vptos gtkwaveptos
yptos:
	yosys $(YOSYS)$(_Y_PTOS)

rptos:
	sed -i 's/paralelo_a_serial/paralelo_a_serial_syn/' $(SYN)$(_SPTOS)

vptos:
	iverilog -o $(OVVP)$(_VVP_PTOS) $(TESTBENCHES)$(_TB_PTOS)
	vvp $(OVVP)$(_VVP_PTOS) > $(LOG_TXT)$(_VVP_PTOS)_log.txt

#target phony
.PHONY: gtkwaveptos
gtkwaveptos:
	gtkwave $(_VCD_PTOS) $(GTKWCONFIG)$(_CONFIG_PTOS)


#******************************************************************************
#### 			SERIALIZATION LAYER
#******************************************************************************
allserial: clean yserial rserial vserial gtkwaveserial 
yserial:
	yosys $(YOSYS)$(_Y_SERIAL)

rserial:
	sed -i 's/paralelo_a_serial/paralelo_a_serial_syn/g; s/paratoserial/paratoserial_syn/g' $(SYN)$(_SSERIAL)

vserial:
	iverilog -o $(OVVP)$(_VVP_SERIAL) $(TESTBENCHES)$(_TB_SERIAL)
	vvp $(OVVP)$(_VVP_SERIAL) > $(LOG_TXT)$(_VVP_SERIAL)_log.txt

#target phony
.PHONY: gtkwaveserial
gtkwaveserial:
	gtkwave $(_VCD_SERIAL) $(GTKWCONFIG)$(_CONFIG_SERIAL)


####################################
####				Devices
####################################
#******************************************************************************
#### 			DEVICE 1
#******************************************************************************

alldisp1: clean ydisp1 rdisp1 vdisp1 gtkwavedisp1

ydisp1:
	yosys $(YOSYS)$(_Y_D1)

rdisp1:
	sed -i 's/classswitching/classswitching_syn/g;  s/fifo_param/fifo_param_syn/g; s/demux12/demux12_syn/g; s/memory/memory_syn/g'  $(SYN)$(_SD1)
	sed -i 's/router/router_syn/g; s/mux21/mux21_syn/g; s/memory/memory_syn/g'  $(SYN)$(_SD1)
	sed -i 's/paralelo_a_serial/paralelo_a_serial_syn/g; s/paratoserial/paratoserial_syn/g' $(SYN)$(_SD1)
	sed -i 's/device1/device1_syn/g' $(SYN)$(_SD1)
vdisp1:
	iverilog -o $(OVVP)$(_VVP_D1) $(TESTBENCHES)$(_TB_D1)
	vvp $(OVVP)$(_VVP_D1) > $(LOG_TXT)$(_VVP_D1)_log.txt

#target phony
.PHONY: gtkwavedisp1
gtkwavedisp1:
	gtkwave $(_VCD_D1) $(GTKWCONFIG)$(_CONFIG_DISP1)

#******************************************************************************
#### 			DEVICE 2
#******************************************************************************

ydisp2:
	yosys $(YOSYS)$(_Y_D2)

rdisp2:
	sed -i 's/device2/device2_syn/g; s/fifo_4x8/fifo_4x8_syn/g; s/serieparalelo/serieparalelo_syn/g' $(SYN)$(_SD2)
vdisp2:
	iverilog -o $(OVVP)$(_VVP_D2) $(TESTBENCHES)$(_TB_D2)
	vvp $(OVVP)$(_VVP_D2) > $(LOG_TXT)$(_VVP_D2)_log.txt

#target phony
.PHONY: gtkwavedisp2
gtkwavedisp2:
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(_VCD_D2)

#******************************************************************************
#### 			DEVICE 3
#******************************************************************************
ydisp3:
	yosys $(YOSYS)$(_Y_D3)

rdisp3:
	sed -i 's/classswitching/classswitching_syn/g; s/dfcontrol/dfcontrol_syn/g;  s/fifo_8x10/fifo_8x10_syn/g; s/demux12/demux12_syn/g; s/memory/memory_syn/g' $(SYN)$(_SD3)
	sed -i 's/router/router_syn/g; s/fifo_6x8/fifo_6x8_syn/g; s/demux12_8/demux12_8_syn/g; s/mux21/mux21_syn/g; s/memory_6x8/memory_6x8_syn/g; s/dfcontrol/dfcontrol_syn/g' $(SYN)$(_SD3)
	sed -i 's/paralelo_a_serial/paralelo_a_serial_syn/g; s/paratoserial/paratoserial_syn/g' $(SYN)$(_SD3)
	sed -i 's/fifo_4x8/fifo_4x8_syn/g; s/serieparalelo/serieparalelo_syn/g' $(SYN)$(_SD3)
	sed -i 's/device1/device1_syn/g; s/device2/device2_syn/g;  s/device3/device3_syn/g' $(SYN)$(_SD3)
vdisp3:
	iverilog -o $(OVVP)$(_VVP_D3) $(TESTBENCHES)$(_TB_D3)
	vvp $(OVVP)$(_VVP_D3) > $(LOG_TXT)$(_VVP_D3)_log.txt

#target phony
.PHONY: gtkwavedisp3
gtkwavedisp3:
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(_VCD_D3)



#******************************************************************************
############ CLEAN FOR ALL
#******************************************************************************


.PHONY: clean
clean:
	rm -rf $(OVVP)*.vvp *.vcd $(LOG_TXT)*_log.txt $(SYN)*syn.v $(DIAGRAMS_GENERATED)*.dot $(DIAGRAMS_GENERATED)*.ps
