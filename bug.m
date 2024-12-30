function result = myFunction(input)
% This function demonstrates a potential error related to implicit type conversion and array indexing.

if ischar(input)
    disp('Input is a string');
    result = double(input(1));  %Attempt to convert char to double. Could fail if not a number
else
    disp('Input is not a string');
    result = input(1); %Access first element. Will fail if not an array
end
end