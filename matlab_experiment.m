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
    z(i + 1) = str2double(b);
    y(i + 1) = z(i + 1) / x(i + 1);
end
x = log2(x);
y = log2(y);
plot(x, y)
xlabel('log_2(x)')
ylabel('log_2(y)')