## Dual Edge Detector

A **Dual Edge Detector** is a circuit that detects both **rising (0 → 1) and falling (1 → 0) edges** of an input signal and generates a **one-cycle pulse** when an edge is detected. It is commonly used in **event detection, clock gating, and signal synchronization**.

### ** Functionality**
- Detects changes in the input (`i`) on both **rising and falling edges**.
- Uses a **flip-flop (`q`)** to store the previous state of `i`.
- The output (`out`) is **high for one clock cycle** when an edge is detected.

### ** Truth Table**
| **Current Input (`i`)** | **Previous (`q`)** | **Output (`out = q ^ i`)** |
|----------------|----------------|------------------|
| 0 → 0 | 0 | 0 |
| 0 → 1 | 0 | 1 (Rising Edge Detected) |
| 1 → 0 | 1 | 1 (Falling Edge Detected) |
| 1 → 1 | 1 | 0 |


