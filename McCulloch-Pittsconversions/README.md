# McCulloch Pitts Conversion
This project emulates **simplified logic gates (AND, AND NOT, OR, OR NOT)** through an elementary **threshold logic unit (TLU)** model in Scilab. The user selects a gate, inputs weights and thresholds, and iteratively edits them until behavior of the gate is accurately reproduced.

---


##  Concept and Features
It employs a **single-layer perceptron-like structure** to mimic logic gates:

- Inputs: \( x_1 \), \( x_2 \) (binary inputs)
- Weights: \( w_1 \), \( w_2 \)
- Output:
  \( y = 
  \begin{cases}
  1 & 
  \text{if } z_{in} \geq \theta \\
  0 & 
  \text{otherwise}
  \end{cases}
\) 

Where:

\[z_{in} = x_1 \cdot w_1 + x_2 \cdot w_2\]
- **Menu-driven choice** of gate type:
  - 1: AND
  - 2: AND NOT
  - 3: OR
  - 4: OR NOT
- **Weight and threshold input** on custom basis
- **Iterative validation**:
  - Prompt user until logic behavior is correct
- Last display of proper weights and threshold

---

##  How to Run

1. Install [Scilab](https://www.scilab.org/)

## Learning Outcome

This project enables one to:
- How **TLUs can represent logic gates**
- The **function of weights and thresholds** in binary classification
- Practical application of **Scilab** to neural and logical operations
--- 

# Logic Gate Simulation using Threshold Logic in Scilab

This project models **basic logic gates (AND, AND NOT, OR, OR NOT)** using a simple **threshold logic unit (TLU)** method with Scilab. The user can choose a gate, input weights and thresholds, and update them iteratively until the gate behavior is properly simulated.

---

##  Features

- **Menu-driven selection** of gate type:
  - 1: AND
  - 2: AND NOT
  - 3: OR
  - 4: OR NOT
- **Weight and threshold custom input**
- **Iterative verification**:
  - User is asked repeatedly until proper logic action is obtained
- Final output of proper weights and threshold

---

## Truth Tables Simulated

| x1 | x2 | AND | AND NOT | OR | OR NOT |
|----|----|-----|----------|----|--------|
| 0  | 0  |  0  |    0     | 0  |   1    |
| 0  | 1  |  0  |    0     | 1  |   0
| 1  | 0  |  0  |    1     | 1  |   0    |
| 1  | 1  |  1  |    0     | 1  |   0    |

---

## Learning Outcome

This project helps understand:
- How **TLUs can simulate logic gates**
- The **function of weights and thresholds** in binary classification
- Practical application of **Scilab** to neural and logical calculations

---

## License

This work is covered by the MIT License.
