def output text
  $stdout.puts text
  $stdout.flush
end

def input
  return $stdin.gets.chomp
end

def run_calculator
  output "\nType 'b' for the basic calculator, 'a' for the advanced calculator, and 'q' to quit:"
  calculator_type = input

  case calculator_type
    when 'b'
      run_basic

    when 'a'
      run_advanced

    when 'q'
      return

    else
      output "Incorrect input"
      run_calculator

    end
end

def is_number? string
  return true if Float(string) rescue false
end

def run_basic
  output "\nType '+', '-', '*', or '/' to add, subtract, multiply, or divide two numbers:"
  basic_type = input

  case basic_type
    when '+', '-', '*', '/'
      output "Type the first number:"
      num1 = input

      output "Type the second number:"
      num2 = input

      if is_number?(num1) == true && is_number?(num2) == true
        result = eval num1.to_f.to_s + basic_type + num2.to_f.to_s
        output "#{num1} #{basic_type} #{num2} = #{result}"
        run_calculator

      else
        output "Not a number"
        run_calculator
      end

    else
      output "Incorrect input"
      run_calculator
  end
end

def run_advanced
  output "\nType '^' or 'sqrt' to take powers or squareroot:"
  advanced_type = input

  case advanced_type
    when '^'
      output "Type the first number:"
      num1 = input

      output "Type the second number:"
      num2 = input

      if is_number?(num1) == true && is_number?(num2) == true
        result = num1.to_f ** num2.to_f
        output "#{num1} ** #{num2} = #{result}"
        run_calculator

      else
        output "Not a number"
        run_calculator
      end

    when 'sqrt'
      output "Type the number:"
      num = input

      if is_number?(num) == true
        result = num.to_f ** 0.5
        output "sqrt(#{num}) = #{result}"
        run_calculator

      else
        output "Not a number"
        run_calculator
      end

    else
      output "Incorrect input"
      run_calculator
  end
end

run_calculator
