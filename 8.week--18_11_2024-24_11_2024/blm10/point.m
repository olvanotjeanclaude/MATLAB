	function		point(C, r)
	
%POINT	plots circles marking points
%	C	coordinates of centre
%	r	radius of centre

t = 0: pi/30: 2*pi;
x = C(1) + r*cos(t);
y = C(2) + r*sin(t);
patch(x, y, [ 0 0 0 ])
	