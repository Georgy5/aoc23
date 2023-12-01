# frozen_string_literal: true
require_relative "../trebuchet.rb"

describe "#find_digits" do
  describe "Find written calibration value" do
    it "return a two-digit number" do
      expect(find_digits("two1nine")).to eq(29)
    end

    it "return a two-digit number" do
      expect(find_digits("eightwothree")).to eq(83)
    end

    it "return a two-digit number" do
      expect(find_digits("abcone2threexyz")).to eq(13)
    end

    it "return a two-digit number" do
      expect(find_digits("xtwone3four")).to eq(24)
    end

    it "return a two-digit number" do
      expect(find_digits("4nineeightseven2")).to eq(42)
    end

    it "return a two-digit number" do
      expect(find_digits("zoneight234")).to eq(14)
    end

    it "return a two-digit number" do
      expect(find_digits("7pqrstsixteen")).to eq(76)
    end
  end
end
