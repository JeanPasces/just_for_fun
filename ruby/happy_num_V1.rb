#!/usr/bin/env ruby

# find if input number is "happy"
def happy_num(num)
  result = 0
  puts "#{num}"
  # create a array of digits
  # same as arr_num = num.digits but faster
  arr_num = num.to_s.chars.map{|dig| dig.to_i}
  # loop on input number digits
  for n in arr_num do
    result += n**2
  end
  if [4,16,20,37,42,58,89,145].include?(result)
    puts "#{result}"
    result = 0
  end
  if (0..1).include?(result)
    return result
  end
  return happy_num(result)
end

def main()
  in_number = gets.chomp.to_i
  test = happy_num(in_number)
  if test == 1
    puts "#{in_number} é um número Feliz"  
  end
  if test == 0
    puts "#{in_number} é um número Infeliz"
  end
end

main
