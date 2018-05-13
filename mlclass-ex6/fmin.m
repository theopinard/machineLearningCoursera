function [theta,cost] = fmin(X, y,sigma,C,initial_theta)

options = optimset('GradObj', 'on', 'MaxIter', 400);

[theta, cost] = fmincg(@(t)(costFunction(X, y,sigma,C,t)), initial_theta, options);
% ====================== YOUR CODE HERE ======================
% Instructions: 
%
%






% =============================================================
    
end