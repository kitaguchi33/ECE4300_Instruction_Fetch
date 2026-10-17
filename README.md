# ECE4300_Instruction_Fetch

### Source Code

| File | Description |
|---|---|
| [`[fetch].v`](https://github.com/kitaguchi33/ECE4300_Instruction_Fetch/blob/main/src/fetch.v) | Main instruction fetch |
| [`[ifIdLatch].v`](https://github.com/kitaguchi33/ECE4300_Instruction_Fetch/blob/main/src/ifIdLatch.v) | IF/ID pipeline |
| [`[incrementer].v`](https://github.com/kitaguchi33/ECE4300_Instruction_Fetch/blob/main/src/incremeter.v) | Increments the PC |
| [`[instrMem].v`](https://github.com/kitaguchi33/ECE4300_Instruction_Fetch/blob/main/src/instrMem.v) | Instruction memory |
| [`[mux2to1].v`](https://github.com/kitaguchi33/ECE4300_Instruction_Fetch/blob/main/src/mux2to1.v) | Selects the next PC |
| [`[pc].v`](https://github.com/kitaguchi33/ECE4300_Instruction_Fetch/blob/main/src/pc.v) | Program counter |

### Testbench
| File |
|---|
| [`[I_FETCHTB].v`](https://github.com/kitaguchi33/ECE4300_Instruction_Fetch/blob/main/testbenches/I_FETCHTB.v) | 
| [`[ifIdLatch].v`](https://github.com/kitaguchi33/ECE4300_Instruction_Fetch/blob/main/testbenches/ifIdLatch_sim.v) | 
| [`[incrementer].v`](https://github.com/kitaguchi33/ECE4300_Instruction_Fetch/blob/main/testbenches/incrementer_sim.v) |
| [`[instrMem_sim].v`](https://github.com/kitaguchi33/ECE4300_Instruction_Fetch/blob/main/testbenches/instrMem_sim.v) | 
| [`[pc_sim].v`](https://github.com/kitaguchi33/ECE4300_Instruction_Fetch/blob/main/testbenches/pc_sim.v) | 

### Timing Diagrams
<img width="1024" height="206" alt="waveform" src="https://github.com/user-attachments/assets/aed2856a-bb14-4d35-9127-732457e92c20" />
<img width="1024" height="223" alt="waveform2" src="https://github.com/user-attachments/assets/95b93a07-17c2-422f-b1fc-a2f406667213" />


