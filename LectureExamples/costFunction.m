function [jVal, gradient] = costFunction(theta)
  
  jVal = (theta(1)-5)**2 + (theta(2)-5)**2;

  gradient = zeros(2,1);
  gradient = 2 * (theta - 5);
  %gradient(1) = 2 * (theta(1) - 5);
  %gradient(2) = 2 * (theta(2) - 5);


% To use above with advance algorithm fminunc (function minimization
% unconstrained) run the following in the same directory:
% 
% options = optimset('GradObj', 'on', 'MaxIter', '100')
% initialTheta = zeros(2,1)
% 
% [optTheta, functionVal, exitFlag] = fminunc(@costFunction, initialTheta, options) 
