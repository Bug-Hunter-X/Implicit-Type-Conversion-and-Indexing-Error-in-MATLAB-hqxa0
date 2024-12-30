function result = myFunction(input)
% Improved function with explicit type checking and error handling.

if ischar(input)
    if isnumeric(str2double(input))
        result = str2double(input);
    else
        error('Input string cannot be converted to a number');
    end
elseif isnumeric(input) && isvector(input) && ~isempty(input)
    result = input(1);
else
    error('Input must be a numeric vector or a numeric string');
end
end