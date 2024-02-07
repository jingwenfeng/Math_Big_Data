A = importdata('SalinasA_corrected.mat');
[M, N, P] = size(A); 
A_reshaped = reshape(A, M * N, P);
[coefficients, score, latent, tsquared, explained] = pca(A_reshaped);

%(a)
disp('(a)')
disp(coefficients);

%(b)
sum = cumsum(explained);
dimensions = find(sum >= 95, 1, 'first');
disp('(b)')
disp(dimensions);

%(c)
disp('(c)')
disp('First three principal components:');
disp(coefficients(:, 1:3));
disp('Last three principal components:');
disp(coefficients(:, end-2:end));
disp('Variance explained by the first three principal components:');
disp(explained(1:3));
disp('Variance explained by the last three principal components:');
disp(explained(end-2:end));
disp('First three include more than 99% of the variance, whereas last three almost nothing');
