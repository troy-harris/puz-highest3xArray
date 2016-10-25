require './spec/spec_helper'
require './wang'

RSpec.describe NumberWang do

  before(:example) do
    @wang = NumberWang.new
  end

  describe "Highest total with two negative ints [3,2,1,-5,-6]" do
    it 'should return 90' do
      array = [3,2,1,-5,-6]
      expect(@wang.highest_total(array)).to eq(90)
    end
  end

   describe "Highest total with all negative ints [-10,-5,-3,-2,-1]" do
    it 'should return -6' do
      array = [-10,-5,-3,-2,-1]
      expect(@wang.highest_total(array)).to eq(-6)
    end
  end

  describe "Highest total with one negative ints [-5,-7,4,2,1,9]" do
    it 'should return 315' do
      array = [-5,-7,4,2,1,9]
      expect(@wang.highest_total(array)).to eq(315)
    end
  end

  describe "Highest total with all positive ints [4,5,-19,3]" do
    it 'should return 60' do
      array = [4,5,-19,3]
      expect(@wang.highest_total(array)).to eq(60)
    end
  end
end
