function [] = plot_boundary_orange(F, V)

boundaryVerts = findBoundaryVertices(F);

f = zeros(size(V,1), 1);
f(boundaryVerts) = 1;

tsurf(F,V, 'CData', f)
axis equal; axis off
shading interp

end
