function [f1,g] = halftone_binarize(f,T)
f1=additive_noise(f,-127,127);
g=halftone_treshold(f,T);
end

