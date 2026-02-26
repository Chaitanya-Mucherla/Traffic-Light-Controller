# 🚦Traffic Light Controller (Verilog – FSM Based)

A simple Finite State Machine (FSM) based Traffic Light Controller designed in Verilog to manage signals for a Highway (HW) and a Crossroad (CR).

📌 **Overview**

This project implements a 5-state Moore FSM that controls traffic lights based on a sensor input (x). The controller ensures safe and ordered transitions between Green, Yellow, and Red signals for both roads.

The design is fully verified using a dedicated testbench with clock generation, stimulus application, and output monitoring.

⚙️ **Features**

• 5-State Moore FSM architecture

• Separate Highway and Crossroad signal control

• Synchronous state transitions

• Asynchronous reset

• Clean state encoding and structured RTL design

• Fully simulated and verified using a Verilog testbench

🧠 **FSM Working Logic**

The controller operates in the following sequence:

1. Highway Green, Crossroad Red

2. Highway Yellow, Crossroad Red

3. Highway Red, Crossroad Red (Transition Delay)

4. Highway Red, Crossroad Green

5. Highway Red, Crossroad Yellow

Transitions depend on:

• Clock signal

• Reset signal

• Sensor input x (vehicle presence on crossroad)

Since this is a Moore machine, outputs depend only on the present state.

🧪 Testbench Details

The testbench:

• Generates clock signal

• Applies reset and input stimulus

• Monitors output signals

• Verifies correct state transitions

Simulation confirms proper sequencing of traffic signals.

🛠️ **Tools Used**

• Verilog HDL

• ModelSim / QuestaSim / Xilinx Vivado (for simulation)

🎯 **Learning Outcomes**

• FSM design (Moore model)

• State encoding & transition logic

• Synchronous vs asynchronous reset

• Writing structured RTL

• Designing effective testbenches
