	function	pline(P, w, c, s)
%LINE	plots line between points P1 and P2, LineWidth w, colour c, style s

[ m n ] = size(P);
if m == 2
 	Hl = plot(P(1, :), P(2, :));
	set(Hl, 'LineWidth', w, 'Color', c, 'Linestyle', s)
elseif m == 3
	Hl = plot3( P(1, :), P(2, :), P(3, :));
	set(Hl, 'LineWidth', w, 'Color', c, 'Linestyle', s)
end