function valorFeature = functionInverseDifferenceMoment( glcm, levels )
%FUNCTIONINVERSEDIFFERENCEMOMENT Summary of this function goes here
%   Detailed explanation goes here

subtotal = 0;

for i=1:1:levels
    grisI = i/levels;
    for j=1:1:levels
        grisJ = j/levels;
        subtotal = subtotal + (  glcm(i,j) / (1+ (grisI-grisJ)^2 )  );
    end
end

valorFeature = subtotal;


end

