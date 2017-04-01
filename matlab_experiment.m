x = 0:1024;
y = zeros(1, max(x) + 1);
z = zeros(1, max(x) + 1);
for i = x
    a = num2str(dec2bin(x(i + 1)));
    c = strlength(a);
    b = '';
    for ii = 1:c
        b(ii) = a(c - ii +1);
    end
    y(i + 1) = str2double(b);
    z(i + 1) = y(i + 1) / x(i + 1);
end
x = log2(x);
z = log2(z);
plot(x, z)