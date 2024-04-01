# Verilog
Verilog gatelevel project
LOGIC DESIGN
GATELEVEL MODELLING PROJECT
Implementation of a bill amount generating machine
The project mainly involves an implementation of a bill amount calculating machine.This system offers customers the flexibility to input the quantities of items purchased for each product,enabling precise bill calculation.
The user can input the quantiy of items purchased for each product and the machine will evaluate the total transaction amount .It will check if the customer purchased products greater than a certain amount and, upon meeting the criteria,it will tell if he/she is eligible for a discount or not.If yes,it will calculate the discount amount user can avail and deduct it from the total amount and finally gives the exact amount customer needs to pay.
Implementation
• We will have inputs as the number of each products purchased.
• Then using a multiplier circuit,multiply each number with its price.
• The program will use full adder circuits to add all the prices and calculate the total bill amount.
• The total bill amount thus calculated is then provided to a comparator circuit and compared with the value required to avail discount and check if it is greater or not.
• Then we find the discount amount(the discount is 25%)
discount amount=total amount x 25
                        100
               = total amount
                      4
• This can be done by using rightshifting the binary number two times.
• Then finally we subtract the discount amount calculated from the total amount using a subtracter logic circuit.
• The output is the amount the customer needs to pay,discount amount,and if the customer is elgible for discount or not.
