# frozen_string_literal: true
require_relative "../trebuchet.rb"

describe "#trebuchet" do
  describe "Find calibration value" do
    it "return a two-digit number" do
      expect(trebuchet("1abc2")).to eq(12)
    end

    it "return a two-digit number" do
      expect(trebuchet("pqr3stu8vwx")).to eq(38)
    end

    it "return a two-digit number" do
      expect(trebuchet("a1b2c3d4e5f")).to eq(15)
    end

    it "return a two-digit number" do
      expect(trebuchet("treb7uchet")).to eq(77)
    end
  end
end
