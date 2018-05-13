function [ C, sigma ] = bestparam( X,y,Xval,yval )
%UNTITLED choose the best C and sigma
%   Detailed explanation goes here
CList = [ 0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30]';
sigmaList = [ 0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30]';
C = 0;
sigma = 0; 
errorRate = 1;
for i = 1:8;
    for j = 1:8;
        Ctest = CList(i);
        sigmatest = sigmaList(j);
        model= svmTrain(X, y, Ctest, @(x1, x2) gaussianKernel(x1, x2, sigmatest));
        predictions = svmPredict(model, Xval);
        if errorRate > mean(double(predictions~= yval));
            C = Ctest;
            sigma = sigmatest;
            errorRate = mean(double(predictions~= yval));
        end
    end 
end

end

