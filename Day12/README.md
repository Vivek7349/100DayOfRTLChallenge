# D Flip-Flop (`Dflipflip`)

## 📌 Overview
The **D Flip-Flop (DFF)** is a **sequential logic circuit** that **stores and transfers data** on the **rising edge of the clock (`clk`)**. It has:
- An **active-high reset (`reset`)**, which **clears `Q` to `0`**.
- A **complementary output (`Qb`)**, which is always the inverse of `Q`.

D Flip-Flops are widely used in **registers, shift registers, memory elements, and sequential logic circuits**.

---

## 🔹 **Module Interface**
### **Port Definitions**
| **Port Name** | **Size** | **Direction** | **Description** |
|--------------|---------|--------------|----------------|
| `D` | 1-bit | `input` | Data input |
| `clk` | 1-bit | `input` | Clock signal (triggers on the rising edge) |
| `reset` | 1-bit | `input` | Asynchronous reset (clears `Q`) |
| `Q` | 1-bit | `output (reg)` | Flip-Flop output (stores `D` value) |
| `Qb` | 1-bit | `output (reg)` | Complement of `Q` (`Qb = ~Q`) |

