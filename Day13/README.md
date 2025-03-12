# JK Flip-Flop (`JKFlipFlop`)

## Overview
The **JK Flip-Flop (J-K FF)** is a **sequential logic circuit** used for **data storage, counters, and memory applications**.  
It is an enhanced version of the **SR flip-flop**, eliminating the **invalid state (`S=1, R=1`)** by introducing a **toggle mode (`J=1, K=1`)**.

This module implements a **positive-edge triggered JK Flip-Flop** with:
- **Synchronous J-K inputs**
- **Asynchronous reset (`reset`)**
- **Complementary output (`Qb`)**

---

## 🔹 **Module Interface**
### **Port Definitions**
| **Port Name** | **Size** | **Direction** | **Description** |
|--------------|---------|--------------|----------------|
| `J` | 1-bit | `input` | J input (Set) |
| `K` | 1-bit | `input` | K input (Reset) |
| `clk` | 1-bit | `input` | Clock signal (positive edge triggered) |
| `reset` | 1-bit | `input` | Asynchronous reset (active high) |
| `Q` | 1-bit | `output reg` | Flip-Flop output |
| `Qb` | 1-bit | `output` | Complementary output (`Qb = ~Q`) |

