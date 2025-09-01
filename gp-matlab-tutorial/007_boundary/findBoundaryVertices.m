function [boundaryVertices] = findBoundaryVertices(F)

boundaryEdges = my_outline(F);

boundaryVertices = unique(boundaryEdges(:));

end
