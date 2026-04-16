clc
clear

h = [1, 2, 2, 1];

samples = [1, 33, 5 17];

multiplication_output = h .*samples

final_product = dot(samples, h)

bin_final_product = dec2bin(final_product, 8)

con_output = conv(samples, h)