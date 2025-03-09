# Simple Communication System (`simp_comm_sys`)

##  Overview
The **Simple Communication System** (`simp_comm_sys`) is a digital circuit that simulates a basic **data encoding, transmission, and decoding process**. It consists of:
1. **Encoder (`enco_4to2`)** – Converts 4-bit data into a 2-bit encoded signal.
2. **Multiplexer (`mux_4to1`)** – Selects one of the input bits based on the control signal.
3. **Demultiplexer (`demux_1to4`)** – Distributes the received signal based on the selection input.
4. **Decoder (`deco_2to4`)** – Converts the 2-bit encoded signal back into the original 4-bit message.

This design is useful for **digital communication systems**, **data transmission**, and **error detection simulations**.

---

## 🔹 **Module Interface**
### **Port Definitions**
| **Port Name** | **Size** | **Direction** | **Description** |
|--------------|---------|--------------|----------------|
| `message` | 4-bit | `input` | Original message to be transmitted |
| `sel` | 2-bit | `input` | Selection signal for multiplexing |
| `received_message` | 4-bit | `output` | The recovered message at the receiver |

### **Internal Wires**
| **Wire Name** | **Size** | **Function** |
|--------------|---------|-------------|
| `encoded_signal` | 2-bit | Encoded output from the encoder |
| `mux_out` | 1-bit | Multiplexer output signal |
| `demux_out` | 4-bit | Demultiplexer output signal |

