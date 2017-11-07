function y = cond_sqrt(x)

if x < 0 || x==inf
    y = 0;
else
    y = sqrt(x);
end
end