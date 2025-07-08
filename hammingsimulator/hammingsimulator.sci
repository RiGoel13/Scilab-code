
// Hamming (7,4) Code Implementation in Scilab

clc;
clear;

// Step 1: Take 4-bit input from the user
data_bits = input("Enter 4-bit data as a row vector: ");
printf("Data Bits: ");
disp(data_bits);

// Step 2: Generate the parity bits
p1 = bitxor(bitxor(data_bits(1), data_bits(2)), data_bits(4));
p2 = bitxor(bitxor(data_bits(1), data_bits(3)), data_bits(4));
p3 = bitxor(bitxor(data_bits(2), data_bits(3)), data_bits(4));

// Step 3: Form the Hamming (7,4) codeword
codeword = [p1 p2 data_bits(1) p3 data_bits(2) data_bits(3) data_bits(4)];
printf("Hamming (7,4) Codeword: ");
disp(codeword);

// Step 4: Define Generator Matrix G (for reference)
G = [1 1 0 1;
     1 0 1 0;
     0 1 1 0;
     1 1 1 0];
printf("Generator Matrix G: ");
disp(G);

// Step 5: Define Parity Check Matrix H
H = [1 0 1 0 1 0 1;
     0 1 1 0 0 1 1;
     0 0 0 1 1 1 1];
printf("Parity Check Matrix H: ");
disp(H);

// Step 6: Introduce an error (manually flip a bit)
received_codeword = codeword;
pos = input("Enter the bit position (1-7) to flip for error simulation (or 0 for no error): ");
if pos >= 1 & pos <= 7 then
    received_codeword(pos) = bitxor(received_codeword(pos), 1);
end
printf("Received Codeword (with error if any): ");
disp(received_codeword);

// Step 7: Compute Syndrome
syndrome = modulo(H * received_codeword', 2);
printf("Syndrome: ");
disp(syndrome');

// Step 8: Determine Error Position
error_position = syndrome(1) * 1 + syndrome(2) * 2 + syndrome(3) * 4;

if error_position > 0 then
    printf("Error detected at position: %d\n", error_position);
    received_codeword(error_position) = bitxor(received_codeword(error_position), 1);
    printf("Corrected Codeword: ");
    disp(received_codeword);
else
    printf("No error detected.\n");
end
