function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
reg = 0;
for j = 2 : size(X,2)
    reg = reg + lambda/(2*m) * theta(j,1)^2;
end

h = sigmoid(X * theta);

J = 1/m * (-y' * log(h) - (1-y)' * log(1-h)) + reg;

Delta1 = 0;
for i = 1:size(X,1)
    Delta1 = Delta1 + 1/m * ( h(i) - y(i) ) * X(i,1);  
end

grad(1,1) = Delta1 ;

Delta = 0;
for j = 2:size(X,2)
    Delta = 0;
    for i = 1:size(X,1)
        Delta = Delta + 1/m * ( h(i) - y(i) ) * X(i,j);
    end
    grad(j,1) = Delta + lambda/m * theta(j,1);
end

% =============================================================

end
