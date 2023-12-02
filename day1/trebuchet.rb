# frozen_string_literal: true

NUMBERS = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine"
}.freeze

POSITION = {
  first: 0,
  last: -1
}.freeze

def trebuchet(string)
  return 0 if string.empty?

  first_value = find_first(string)
  first = first_value.nil? ? string[/\d/] : first_value

  last_value = find_last(string)
  last = last_value.nil? ? string.reverse[/\d/] : last_value

  "#{first}#{last}".to_i
end

def find_digits(string)
  found_digits = {}
  NUMBERS.each do |k, v|
    add_to(string, found_digits, :index, v)
    add_to(string, found_digits, :index, k.to_s)
    add_to(string, found_digits, :rindex, v)
    add_to(string, found_digits, :rindex, k.to_s)
  end
  found_digits
end

def add_to(string, found_digits, method, number)
  if string.include?(number)
    found_digits[string.send(method, number)] = number
  end
end

def find_first(string)
  found_digits = find_digits(string)
  ordered_found_digits = found_digits.keys.sort
  NUMBERS.key(found_digits[(ordered_found_digits[POSITION[:first]])])
end

def find_last(string)
  found_digits = find_digits(string)
  ordered_found_digits = found_digits.keys.sort
  NUMBERS.key(found_digits[(ordered_found_digits[POSITION[:last]])])
end
