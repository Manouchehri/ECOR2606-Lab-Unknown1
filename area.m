% ECOR2606 - David Manouchehri - Part I
% Input:  
%           M is the Mach number of the flow at this point
%           A is the cross sectional area at the choke point
%           G is the specific heat ratio for the gas
% Output:   
%           area is the cross sectional area at the point of interest

function [ area ] = area(M, A, G)

if(M <= 0)
    error('Mach number below or equal to 0.');
elseif(M > 1)
    error('Mach number above 1.');
else
    area = (A ./ M).*( 2./(G + 1) .* (1 + ((G - 1)./2) * M.^2) ).^((G + 1)./(2.*(G - 1)));
end
