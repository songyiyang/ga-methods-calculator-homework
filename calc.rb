
def calculator()

def factorial(number)
	if (number>1)
	factorial = number * factorial(number - 1)
	elsif(number == 1)
	factorial = 1
	end
	return factorial
end
def plus(num1, num2)
	return num1 + num2
end
def minus(num1, num2)
	return num1 - num2
end
def multiply(num1, num2)
	return num1 * num2
end
def divide(num1, num2)
	return num1.to_f / num2.to_f
end
def exponents(num1, num2)
	return num1 ** num2
end
def sqrt(num1)
	return Math.sqrt(num1)
end

def sine(num1)
	s = (num1.to_f/180) * Math::PI
	sine = s
	for i in 1..1000
		j = 2*i + 1
		if (j+1)%4==0
			sine = sine - exponents(s, j)/factorial(j) 
		else 
			sine = sine + exponents(s, j)/factorial(j) 
		end
	end
	return sine
end
def tan(num1)
	s = (num1.to_f/180) * Math::PI
	cos = 1
	for i in 1..1000
		j = 2 * i 
		if j%4==0
			cos = cos + exponents(s, j)/factorial(j) 
		else 
			cos = cos - exponents(s, j)/factorial(j) 
		end
	end
	return sine(num1)/cos
end
puts "Here's a simple Calculator"
puts "Please select the operators in Menu"
puts "-----------------------------------------------------------"
puts " 1.+        2.-        3.*          4. /          5.x^y    "
puts " 6.x^2      7.x^3      8.SQRT(x)    9.sine(x)     10.tan(x)"
puts "-----------------------------------------------------------"
puts "*  Note: the variable for sine() and tan() should be in degree   * "

while true
input = gets.chomp.to_i
if input == 1
	operator = "+" 
	break
elsif input == 2
	operator = "-" 
	break
elsif input == 3
	operator = "*" 
	break
elsif input == 4
	operator = "/" 
	break
elsif input == 5
	operator = "^"
	break
elsif input == 6
	operator = "^2"
	break
elsif input == 7
	operator = "^3"
	break
elsif input == 8
	operator = "sqrt(s)"
	break
elsif input == 9
	operator = "sin()"
	break
elsif input == 10
	operator = "tan()"
	break
else puts "Please enter the corresponding number of the operator"
end
end
puts "Please enter the (first) Number..."
number1 = gets.chomp.to_i
if input!=6 && input!=7 &&input !=8 &&input !=9 &&input !=10
puts "Please enter the second Number..."
number2 = gets.chomp.to_i
end

if input ==1
	number3 = plus(number1, number2)
elsif input == 2
	number3 = minus(number1, number2)
elsif input == 3
	number3 = multiply(number1, number2)
elsif input ==4
	number3 = divide(number1, number2)
elsif input ==5
	number3 = exponents(number1, number2)
elsif input ==6
	number3 = exponents(number1, 2)
elsif input == 7
	number3 = exponents(number1, 3)
elsif input == 8
	number3 = sqrt(number1)
elsif input == 9
	number3 = sine(number1)
elsif input == 10
	number3 = tan(number1)
end

if input<=4 && input >= 1
	puts "The result of #{number1} #{operator} #{number2} is #{number3}" 
elsif input == 5
	puts "The result of #{number1}#{operator}#{number2} is #{number3}"
elsif input == 8
	puts "The result of SQRT(#{number1}) is #{number3}"
elsif input == 9
	puts "The result of sin(#{number1}) is #{number3}"
elsif input == 10
	puts "The result of tan(#{number1} is #{number3}"
else
	puts "The result of #{number1}#{operator} is #{number3}"
end

end


calculator()

