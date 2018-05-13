function J = costFunction(X, y,sigma,C,theta)
m = size(X,1);
J = 0;
for i =1:m;
    x=X(i,:);
    f = zeros(m,1);
    for j = 1:m;
        f(j) = gaussianKernel(x,X(j,:),sigma);
    end;
    f=[1;f];
    J = J + C*(y(i) * cost1(theta' * f) + (1-y(i)) * cost0(theta' * f));
J = J + theta(2:end)' * theta(2:end);        
end

% ====================== YOUR CODE HERE ======================
% Instructions: 
%
%






% =============================================================
    
end