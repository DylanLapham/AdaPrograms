with Ada.Text_IO;   use Ada.Text_IO;
with Ada.Integer_Text_IO;    use Ada.Integer_Text_IO;

procedure HelloWorld is Num1, Num2, Num3, smallestNum : Integer;
begin
    -- put line
    Put("Enter the first number:");
    -- get first number
    Get(Num1);

    -- put line
    Put("Enter the second number:");
    -- get second number
    Get(Num2);

    -- put line
    Put("Enter the last number:");
    -- get third number
    Get(Num3);

    -- compare nums together to find smallest. Set smallest equal to that corresponding outcome
    if Num1 <= Num2 and Num1 <= Num3 then
        smallestNum := Num1;
    elsif Num2 <= Num1 and Num2 <= Num3 then
        smallestNum := Num2;
    else
        smallestNum := Num3;
    end if;

    -- output smallest number
    Put_Line("The smallest of the numbers entered is:" & Natural'image(smallestNum));
end HelloWorld;
