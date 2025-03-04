# Serial-In Parallel-Out (SIPO) Shift Register

##  Overview
The **SIPO (Serial-In Parallel-Out) Shift Register** is a **4-bit shift register** that **takes serial input (`si`)** and shifts data **on each clock pulse (`clk`)**, storing the values in a **4-bit register (`po`)**. The output provides a **parallel representation** of the serial input sequence.

---

## 🔹 **Module Interface**
### **Port Definitions**
| **Port Name** | **Size** | **Direction** | **Description** |
|--------------|---------|--------------|----------------|
| `clk` | 1-bit | `input` | Clock signal (triggers shifting) |
| `rst` | 1-bit | `input` | Reset signal (clears register) |
| `si` | 1-bit | `input` | Serial input bit |
| `po` | 4-bit | `output` | Parallel output (latest 4 bits received) |

