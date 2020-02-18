require 'dessert.rb'
require 'byebug'

RSpec.configure do |config|
  config.filter_run_excluding :disabled => true
end

describe Dessert do
  describe 'dessert getters and setters' do
    before(:each)  { @dessert = Dessert.new('cake', 400) }
    it 'should set name [10 points]' , points: 10 do
      expect(@dessert.name).to eq('cake')
    end
    it 'should set calories [10 points]' , points: 10 do
      expect(@dessert.calories).to eq(400)
    end
    it 'should be able to change name [10 points]' , points: 10 do
      @dessert.name = 'ice cream'
      expect(@dessert.name).to eq('ice cream')
    end
    it 'should be able to change calories [10 points]' , points: 10 do
      @dessert.calories = 80
      expect(@dessert.calories).to eq(80)
    end
  end
  
  describe 'delicious and healthy', :disabled => true do
    describe '-cake' do
      before :each do
        @dessert = Dessert.new('cake', 400)
      end
      it 'should be delicious [10 points]' do
        expect(@dessert).to be_delicious
      end
      it 'should not be healthy [10 points]' do
        expect(@dessert).not_to be_healthy
      end
    end
    
    describe '-apple' do
      before :each do
        @subject = Dessert.new('apple', 75)
      end
      it 'should be delicious [10 points]' do
        expect(@subject).to be_delicious
      end
      it 'should be healthy [10 points]' do
        expect(@subject).to be_healthy
      end
    end
  end
end

describe JellyBean do
  describe 'JellyBean getters and setters', :disabled => true do
    before(:each)  { @jellybean = JellyBean.new('vanilla') }
    
    it 'should contain 5 calories [2.5 points]' do
      expect(@jellybean.calories).to be == 5
    end
    it 'should be named vanilla jelly bean [2.5 points]' do
      expect(@jellybean.name).to match(/vanilla jelly bean/i)
    end
    it 'should set flavor [2.5 points]' do
      expect(@jellybean.flavor).to eq('vanilla')
    end
    it 'should be able to change flavor [2.5 points]' do
      @jellybean.flavor = 'cherry'
      expect(@jellybean.flavor).to eq('cherry')
    end
  end
  
  describe 'modify delicious', :disabled => true do
    describe '-when non-licorice' do
      before :each do
        @jellybean = JellyBean.new('vanilla')
      end
    
      it 'should be delicious [5 points]' do
        expect(@jellybean).to be_delicious
      end
    end
  
    describe '-when licorice' do
      before :each do
        @jellybean = JellyBean.new('licorice')
      end
      it 'should not be delicious [5 points]' do
        expect(@jellybean).not_to be_delicious
      end
    end
  end
end
