# frozen_string_literal: true

require_relative 'trebuchet'

def sum_calibration_values
  filename = 'input'
  count = 0
  File.readlines(filename, chomp: true).each do |calibration_string|
    count += trebuchet(calibration_string)
  end
  count
end

puts sum_calibration_values
