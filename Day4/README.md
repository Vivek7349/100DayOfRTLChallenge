# 8-bit ALU (Arithmetic Logic Unit)

## 📌 Overview
The **`Alu8`** module is an 8-bit Arithmetic Logic Unit (ALU) that performs various arithmetic and logical operations based on the **3-bit `op` code**. The ALU supports **addition, subtraction, bitwise operations, and comparisons**.

---

## 🔹 **Module Interface**
### **Port Definitions**
| **Port Name** | **Size** | **Direction** | **Description** |
|--------------|---------|--------------|----------------|
| `a` | 8-bit | `input` | First operand |
| `b` | 8-bit | `input` | Second operand |
| `op` | 3-bit | `input` | Operation selector |
| `out` | 8-bit | `output` | Result of the ALU operation |
| `carry` | 1-bit | `output` | Carry flag for arithmetic operations |

---

## 🔹 **Operations Supported**
The ALU performs different operations based on the **3-bit `op` code**:

| **Opcode (`op`)** | **Operation** | **Description** |
|------------------|--------------|----------------|
| `000` | `a + b` | Addition (supports carry) |
| `001` | `a - b` | Subtraction (supports borrow/carry) |
| `010` | `a << b[2:0]` | Left Shift (`a` shifted left by `b` bits) |
| `011` | `a >> b[2:0]` | Right Shift (`a` shifted right by `b` bits) |
| `100` | `a & b` | Bitwise AND |
| `101` | `a '|' b` | Bitwise OR |
| `110` | `a ^ b` | Bitwise XOR |
| `111` | `{7'b0, a == b}` | Comparison (`1` if `a == b`, else `0`) |
