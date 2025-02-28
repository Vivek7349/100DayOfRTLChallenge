# D Flip-Flop (DFF)

## A D Flip-Flop (DFF)** is a sequential circuit that captures the **input (`D`)** on the rising edge of the clock and stores it until the next clock cycle. It is widely used in registers, counters, and memory units.

### D Flip-Flop Truth Table
| Clock (`clk`) | D | Reset (`rst`) | Output Q | Complement Qb |
|--------------|---|-------------|---------|--------------|
| ↑            | 0 | 0           | 0       | 1            |
| ↑            | 1 | 0           | 1       | 0            |
| ↑            | X | 1           | 0       | 1            |

- **`↑`** → Rising clock edge  
- **`X`** → Don't care condition  
- **Reset (`rst`) = 1** → Resets the flip-flop (`Q = 0`)  

