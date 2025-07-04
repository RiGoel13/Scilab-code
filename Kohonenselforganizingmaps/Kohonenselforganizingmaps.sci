clear;

clc;

// Input patterns (4 input vectors, 4 features each)
x = [1 1 0 0;
     0 0 0 1;
     1 0 0 0;
     0 0 1 1];

// Learning rate
alpha = 0.6;

// Weight matrix: 4 features × 2 neurons
w = rand(4, 2);
disp('Initial Weight Matrix:');
disp(w);

for epoch = 1:300
    for i = 1:4
        // Calculate distance from each neuron
        for j = 1:2
            D(j) = 0;
            for k = 1:4
                D(j) = D(j) + (w(k,j) - x(i,k))^2;
            end
        end

        // Find winning neuron (smallest distance)
        for j = 1:2
            if D(j) == min(D)
                J = j;
            end
        end

        // Update weights of winning neuron
        w(:,J) = w(:,J) + alpha * (x(i,:)' - w(:,J));
    end

    // Reduce learning rate
    alpha = 0.5 * alpha;

    // Plot only at epoch 1 and 300
    if epoch == 1 | epoch == 300 then
        scf();
        x_vals = 1:4;

        // Plot input vectors
        plot(x_vals, x(1,:), 'r-o');
        plot(x_vals, x(2,:), 'g-^');
        plot(x_vals, x(3,:), 'b-s');
        plot(x_vals, x(4,:), 'm-d');

        // Plot weights of neurons
        plot(x_vals, w(:,1)', 'k--*'); // Neuron 1
        plot(x_vals, w(:,2)', 'c--x'); // Neuron 2

        xtitle("Epoch " + string(epoch) + ": Input Vectors vs Neuron Weights");
        xlabel("Feature Index (1 to 4)");
        ylabel("Value");
        legend(["Input 1", "Input 2", "Input 3", "Input 4", "Neuron 1", "Neuron 2"]);
        xgrid();
        sleep(1500); // Pause to view plot
    end
end

disp("Final Weight Matrix after 300 Epochs:");
disp(w);
