# frozen_string_literal: true

def trebuchet(string)
  "#{string[/\d/]}#{string.reverse[/\d/]}".to_i
end
