function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% Add ones to X matrix

X = [ones(m,1) X];

% Create predictions

A = sigmoid(X*Theta1');
B = [ones(m,1) A];
C = sigmoid(B*Theta2');

[max_values indicies] = max(C');
p = indicies';

% Code (needs y) to calculate percentage correct classification
% c = [indicies' y (indicies' == y)];
% fprintf('Correct Answers:\n');
% q = sum(c(:,3))
% fprintf('Percentage Correct:\n');
% q/m








% =========================================================================


end
