-- Author: Dylan Lapham
-- This program takes in from stdin n numbers to print the Fibonacci series up to.

with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Integer_Text_IO;   use Ada.Integer_Text_IO;

procedure fibonacci is n, i, firstNum, secondNum, nextNum : Integer;
begin
    -- initialize first two numbers of fibonacci sequence, sum of two for next number, and i for loop
    firstNum := 0;
    secondNum := 1;
    nextNum := firstNum + secondNum;
    i := 3;

    -- put prompt
    Put_Line("Enter n numbers to print up to:");
    -- get n numbers
    Get(n);

    -- print first two numbers
    Put_Line("Fibonacci series:");
    Put_Line(Natural'Image(firstNum));
    Put_Line(Natural'Image(secondNum));

    -- while i is less than or equal to the number of terms wanted, n: 
    -- put the sum of the first two numbers, set first = to second, and second = to next. Re check the sum and increment i.
    while i <= n loop
        Put_Line(Integer'Image(nextNum));
        firstNum := secondNum;
        secondNum := nextNum;
        nextNum := firstNum + secondNum;
        i := i + 1;
    end loop;
end fibonacci;
