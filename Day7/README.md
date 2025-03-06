# 4-bit Linear Feedback Shift Register (LFSR)

## 📌 Overview
The **LFSR (Linear Feedback Shift Register)** is a **4-bit shift register** that generates a **pseudo-random sequence** based on a **feedback function**. It is commonly used in applications like **random number generation, cryptography, and error detection codes**.

This implementation initializes the LFSR with `4'hE (1110)` and shifts bits at each **positive clock edge (`clk`)**, updating the state using a **XOR feedback function (`store[3] ⊕ store[1]`)**.

---

## 🔹 **Module Interface**
### **Port Definitions**
| **Port Name** | **Size** | **Direction** | **Description** |
|--------------|---------|--------------|----------------|
| `clk` | 1-bit | `input` | Clock signal (triggers shifting) |
| `reset` | 1-bit | `input` | Resets the register to `1110` (hex `E`) |
| `out` | 4-bit | `output` | Current LFSR state (pseudo-random sequence) |

