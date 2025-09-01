function [boundaryEdges] = my_outline(F)
%MY_OUTLINE Find the boundary edges of a triangle mesh
%
% [O] = my_outline(F)
% 
% Input:
%  F  # F by polysize face list of indices
% Output:
% boundaryEdges  # boundaryEdges by 2 list of boundary edges

e1 = [F(:,1), F(:,2)];
e2 = [F(:,2), F(:,3)];
e3 = [F(:,3), F(:,1)];

allEdges = [e1; e2; e3];
sortedEdges = sort(allEdges,2);

[uniqueEdges, ~, idx] = unique(sortedEdges, 'rows');
counts = accumarray(idx, 1);
boundaryMask = counts == 1;

boundaryEdges = uniqueEdges(boundaryMask, :);

end
