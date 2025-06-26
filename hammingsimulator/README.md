# Hamming Simulator

This project illustrates how to **generate, transmit, detect, and correct errors** with the **Hamming Error-Correcting Code** in Scilab.

---


##  Overview

**Hamming (7,4)** is a forward error-correcting code that encodes **4 data bits** into **7 bits** by adding **3 parity bits**. It can detect and correct **single-bit errors**.

---


##  Features

- Takes in **4-bit user data**
- Creates **3 parity bits** via XOR operations
- Creates a **7-bit Hamming codeword**
- Optionally **simulates an error in 1 bit**
- Calculates **syndrome** based on the parity check matrix
- Detects and corrects the error if present

---

##  Logic Summary

### Codeword Formation:
```
[ p1 p2 d1 p3 d2 d3 d4 ]
```
Where:
- `p1 = d1 ⊕ d2 ⊕ d4`
- `p2 = d1 ⊕ d3 ⊕ d4`
- `p3 = d2 ⊕ d3 ⊕ d4`

### Syndrome Calculation:
\[
\text{syndrome} = H \cdot \text{received\_codeword}^T \mod 2
\]

The syndrome value corresponds to a bit position (1 to 7) where the error occurred.

---

##  How to Use

1. **Execute the script in Scilab**
2. **Input a 4-bit data vector** (e.g., `[1 0 1 1]`)
3. **Optionally flip a bit** by inputting a position (1–7) to mimic transmission error
4. The script:
- Displays the computed Hamming code
- Displays the **syndrome**
- **Detects and corrects** the bit if necessary

---



##  Example

```
Enter 4-bit data as a row vector: [1 0 1 1]
Hamming (7,4) Codeword:   1.   1.   1.   0.   0.   1.   1.
```.
Input bit position (1-7) to flip for error simulation (or 0 for no error): 3
Received Codeword:        1.   1.   0.   0.   0.   1.   1.
Syndrome:                 1.   0.   1.
Error found at location: 5
Corrected Codeword:       1.   1.   0.   0.   1.   1.   1.
```

---

##  Matrices Utilized

### Generator Matrix (G):
```
[1 1 0 1;
 1 0 1 0;
 0 1 1 0;
 1 1 1 0]
```

### Parity Check Matrix (H):
```
[1 0 1 0 1 0 1;
 0 1 1 0 0 1 1;
```
0 0 0 1 1 1 1]

---

##  Learning Objectives

- Learn **error detection and correction** through syndrome decoding
- Apply **binary operations (XOR, modulo)** in Scilab
- Use matrix multiplication for encoding and verification

---

## License

This project is under the **MIT License**.
