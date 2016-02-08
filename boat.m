function boat()
n = 10
y = linspace(-1, 1, 100)
z = hull(y)

    function z = hull(y)
    z = abs(y).^n -1
    end
fun = @(y,z) z./z;
ymin = -1;
ymax = 1;
%zmin = abs(y)^n - 1;
zmax = 0;
q = integral2(fun,ymin,ymax,@hull,zmax)
end