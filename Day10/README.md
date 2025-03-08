## 📌 Overview
The **3-to-8 Decoder** is a combinational circuit that **takes a 3-bit binary input (`in`)** and **activates one of the 8 output lines (`out`)**, based on the binary value of the input. It is widely used in **memory addressing, demultiplexing, and digital logic design**.

---

## 🔹 **Module Interface**
### **Port Definitions**
| **Port Name** | **Size** | **Direction** | **Description** |
|--------------|---------|--------------|----------------|
| `in` | 3-bit | `input` | 3-bit binary input |
| `en` | 1-bit | `input` | Enable signal (active high) |
| `out` | 8-bit | `output` | One-hot encoded output |

