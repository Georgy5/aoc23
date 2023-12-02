# frozen_string_literal: true
require_relative "../trebuchet.rb"

describe "#trebuchet" do
  describe "Find calibration value" do
    it "returns a two-digit number" do
      expect(trebuchet("1abc2")).to eq(12)
    end

    it "returns a two-digit number" do
      expect(trebuchet("pqr3stu8vwx")).to eq(38)
    end

    it "returns a two-digit number" do
      expect(trebuchet("a1b2c3d4e5f")).to eq(15)
    end

    it "returns a two-digit number" do
      expect(trebuchet("treb7uchet")).to eq(77)
    end
  end

  describe "Find written calibration value" do
    it "returns a two-digit number" do
      expect(trebuchet("two1nine")).to eq(29)
    end

    it "returns a two-digit number" do
      expect(trebuchet("eightwothree")).to eq(83)
    end

    it "returns a two-digit number" do
      expect(trebuchet("abcone2threexyz")).to eq(13)
    end

    it "returns a two-digit number" do
      expect(trebuchet("xtwone3four")).to eq(24)
    end

    it "returns a two-digit number" do
      expect(trebuchet("4nineeightseven2")).to eq(42)
    end

    it "returns a two-digit number" do
      expect(trebuchet("zoneight234")).to eq(14)
    end

    it "returns a two-digit number" do
      expect(trebuchet("7pqrstsixteen")).to eq(76)
    end
  end

  describe "More mixed cases" do
    it "returns a two-digit number" do
      expect(trebuchet("jrjh5vsrxbhsfour3")).to eq(53)
    end

    it "returns a two-digit number" do
      expect(trebuchet("tn5eightfncnzcdtthree8")).to eq(58)
    end

    it "returns a two-digit number" do
      expect(trebuchet("zhss9gfxfgmrmzthreefivevpkljfourtwoeight")).to eq(98)
    end

    it "returns a two-digit number" do
      expect(trebuchet("z39hpppnncfivenbkc")).to eq(35)
    end

    it "returns a two-digit number" do
      expect(trebuchet("oneseven2nxrcseven")).to eq(17)
    end

    it "returns a two-digit number" do
      expect(trebuchet("53zsvpqnrjtwo5nine5nrdvmg")).to eq(55)
    end

    it "returns a two-digit number" do
      expect(trebuchet("xeightwopbgt7two")).to eq(82)
    end

    it "returns a two-digit number" do
      expect(trebuchet("98nine8")).to eq(98)
    end

    it "returns a two-digit number" do
      expect(trebuchet("sevendxbninefour2fourclmln")).to eq(74)
    end
  end
end
