clear;
clc;

// Menu-driven input for gate type
disp('Select the gate function:');
disp('1. AND');
disp('2. AND NOT');
disp('3. OR');
disp('4. OR NOT');

gate_type = input('Enter your choice (1-4): ');

switch gate_type
    case 1 // AND Function
        disp('AND Gate');
        w1 = input('Weight w1 = ');//1
        w2 = input('Weight w2 = ');//1
        theta = input('Threshold = ');//2

        x1 = [0 0 1 1];
        x2 = [0 1 0 1];
        z  = [0 0 0 1]; // AND
        y  = [0 0 0 0];

        con = 1;
        while con
            zin = x1 .* w1 + x2 .* w2;
            for i = 1:4
                y(i) = (zin(i) >= theta);
            end

            disp('Output of Net:');
            disp(y);

            if y == z then
                con = 0;
            else
                disp('Try different weights and threshold');
                w1 = input('Weight w1 = ');
                w2 = input('Weight w2 = ');
                theta = input('Threshold = ');
            end
        end
        disp('Final Weights and Threshold for AND:');
        disp ('Weight of neurons');
        disp(w1); disp(w2); 
        disp ('Threshold Value');
        disp(theta);

    case 2 // AND NOT Function
        disp('AND NOT Gate');
        w1 = input('Weight w1 = ');//1
        w2 = input('Weight w2 = ');//-1
        theta = input('Threshold = ');//1

        x1 = [0 0 1 1];
        x2 = [0 1 0 1];
        z  = [0 0 1 0]; // AND NOT
        y  = [0 0 0 0];

        con = 1;
        while con
            zin = x1 .* w1 + x2 .* w2;
            for i = 1:4
                y(i) = (zin(i) >= theta);
            end

            disp('Output of Net:');
            disp(y);

            if y == z then
                con = 0;
            else
                disp('Try different weights and threshold');
                w1 = input('Weight w1 = ');
                w2 = input('Weight w2 = ');
                theta = input('Threshold = ');
            end
        end
        disp('Final Weights and Threshold for AND NOT:');
        disp ('Weight of neurons');
        disp(w1); disp(w2); 
        disp ('Threshold value');
        disp(theta);

    case 3 // OR Function
        disp('OR Gate');
        w1 = input('Weight w1 = ');
        w2 = input('Weight w2 = ');
        theta = input('Threshold = ');

        x1 = [0 0 1 1];
        x2 = [0 1 0 1];
        z  = [0 1 1 1]; // OR
        y  = [0 0 0 0];

        con = 1;
        while con
            zin = x1 .* w1 + x2 .* w2;
            for i = 1:4
                y(i) = (zin(i) >= theta);
            end

            disp('Output of Net:');
            disp(y);

            if y == z then
                con = 0;
            else
                disp('Try different weights and threshold');
                w1 = input('Weight w1 = ');
                w2 = input('Weight w2 = ');
                theta = input('Threshold = ');
            end
        end
        disp('Final Weights and Threshold for OR:');
        disp ('Weight of neurons');
        disp(w1); disp(w2);
        disp ('Threshold value');
        disp(theta);

    case 4 // OR NOT Function
        disp('OR NOT Gate');
        w1 = input('Weight w1 = ');
        w2 = input('Weight w2 = ');
        theta = input('Threshold = ');

        x1 = [0 0 1 1];
        x2 = [0 1 0 1];
        z  = [1 0 0 0]; // OR NOT
        y  = [0 0 0 0];

        con = 1;
        while con
            zin = x1 .* w1 + x2 .* w2;
            for i = 1:4
                y(i) = (zin(i) >= theta);
            end

            disp('Output of Net:');
            disp(y);

            if y == z then
                con = 0;
            else
                disp('Try different weights and threshold');
                w1 = input('Weight w1 = ');
                w2 = input('Weight w2 = ');
                theta = input('Threshold = ');
            end
        end
        disp('Final Weights and Threshold for OR NOT:');
        disp ('Weight of neurons');
        disp(w1); disp(w2); 
        disp ('Threshold value');
        disp(theta);
        
    otherwise
        disp('Please enter a number between 1 and 5');
end
