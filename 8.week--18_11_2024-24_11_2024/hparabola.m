%HPARABOLA  Defines a function for a parabola used in a QUAD example
 
    function y = hparabola(x)
    
a = 1;
b = 3;
y = -(b/a^2)*x.^2 + b;