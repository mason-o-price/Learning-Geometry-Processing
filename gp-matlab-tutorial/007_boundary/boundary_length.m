function L = boundary_length(V,F)
%BOUNDARY_LENGTH Compute the length of a mesh's boundary
%
% Input:
%  V,F  input mesh
% Output:
%  L  the length of the boundary

% Compute the indices of all boundary edges.

boundaryEdges = my_outline(F);

edgeVectors = V(boundaryEdges(:,2),:) - V(boundaryEdges(:,1),:);

L = sum(normrow(edgeVectors),1);

end