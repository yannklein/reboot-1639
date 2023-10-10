def calculator(first_number, seconde_number, operator)
  if operator == "+"
    return first_number + seconde_number
  elsif operator == "-"
    return first_number - seconde_number
  elsif operator == "*"
    return first_number * seconde_number
  elsif operator == "/"
    return first_number / seconde_number
  else
    return "wrong operator!"
  end
end

def calculator(first_number, seconde_number, operator)
  case operator
  when "+" then first_number + seconde_number
  when "-" then first_number - seconde_number
  when "*" then first_number * seconde_number
  when "/" then first_number / seconde_number
  else
    return "wrong operator!"
  end
end