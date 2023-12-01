# frozen_string_literal: true

NUMBERS = {
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5,
  six: 6,
  seven: 7,
  eight: 8,
  nine: 9
}.freeze

def trebuchet(string)
  "#{string[/\d/]}#{string.reverse[/\d/]}".to_i
end

def  find_digits(string)
end
