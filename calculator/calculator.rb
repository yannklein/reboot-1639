def calculator(first_number, second_number, operator)
  return case operator
  when "+" then first_number + second_number
  when "-" then first_number - second_number
  when "*" then first_number * second_number
  when "/" then first_number.fdiv(second_number)
  else
    "Your input is invalid!!"
  end
end