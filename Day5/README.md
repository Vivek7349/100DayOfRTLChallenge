# Odd Counter (Verilog)

## Overview
The **OddCounter** module is an **8-bit counter** that **increments by 2** on each positive clock edge (`clk`).  
It **starts at 1 (`0x01`)** and continues counting odd numbers (`1, 3, 5, 7...`).  
The module includes an **asynchronous reset** that resets the counter back to `1`.

---

##  **Module Interface**
### **Port Definitions**
| **Port Name** | **Size** | **Direction** | **Description** |
|--------------|---------|--------------|----------------|
| `clk` | 1-bit | `input` | Clock signal (increments counter on rising edge) |
| `reset` | 1-bit | `input` | Asynchronous reset (sets `count = 1`) |
| `count` | 8-bit | `output` | Holds the current odd count value |

