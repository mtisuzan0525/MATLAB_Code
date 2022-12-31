fprintf('select your choice and enter the option number!\n')
fprintf('1)Area of Rectangle\n')
fprintf('2)Area of square\n')
fprintf('3)Area of circle\n')
fprintf('4)Area of triangle\n')
user_input = input('You choice? : ');
if user_input == 1
    length = input('Enter the length of the rectangle: ');
    breadth = input('Enter the breadth of the rectangle; ');
    a = length*breadth;
elseif user_input == 2
    side = input('Enter the length of the side of  the square: ');
    a = side*side; %This  can aso be written as side^2
elseif user_input == 3
    radius = input('Enter the length of the redius of circle: ');
    a = pi*(radius^2); %This can also be written as pi*radius*radius
elseif user_input == 4
    height = input('Enter the height of the triangle: ');
    base = input('Enter the base length of the triangle: ');
    a = 0.5*height*base;
else
    fprintf('The input you have entered is wrong\n');
    fprintf('please enter only numbers present in choice');
    fprintf('Try Again!!!');
end
fprintf('Area = %.2f\n',a);

    