# Kohonen Self Organizing Maps
Unsupervised Learning with Competitive Learning in Scilab

This project illustrates a simple **competitive learning** algorithm using Scilab. The algorithm models a basic **unsupervised learning process** based on **Self-Organizing Maps (SOMs)**, where input vectors compete to learn the weights of neurons based on similarity.

## Overview

- 4 input vectors (with 4 features each)
- 2 neurons compete to learn and represent the input patterns
- Winning neuron updates its weight vector toward the input
- Learning rate decay over time
- Visualization of how neuron weights evolve

##How It Works

1. Initialization:
   - Random weights assigned to two neurons.
2. Distance Calculation:
   - For each input vector, compute Euclidean distance to each neuron's weight.
3. Winner Neuron:
   - The neuron with the **minimum distance** "wins".
4. Update of Weights:
   - Update only the winning neuron's weights.
5. Learning Rate:
   - Divided by 2 after every epoch to minimize updates with passing time.


## How to Run

1. Install [Scilab](https://www.scilab.org/)
2. Copy the script into the Scilab editor
3. Run and watch the plot windows

## Use Cases

This type of unsupervised competitive learning can be used for:
- Clustering
- Feature extraction
- Dimensionality reduction (in higher forms such as full SOM)

## License

This project is open-source and released under the MIT License.
