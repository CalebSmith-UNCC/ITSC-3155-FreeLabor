require 'hashes.rb'

RSpec.configure do |config|
  config.filter_run_excluding :disabled => true
end

describe 'Ruby Hashes Part I' do

  describe "array_2_hash" do
    it "should be defined" do
      expect { array_2_hash(["bobsmith@example.com","sallyfield@example.com","markdole@example.com"], {'Bob Smith'=>'', 'Sally Field'=>'', 'Mark Dole'=>''}) }.not_to raise_error
    end
    
    it "returns the correct hash [20 points]" , points: 20 do
      expect(array_2_hash(["bobsmith@example.com","sallyfield@example.com","markdole@example.com"], {'Bob Smith'=>'', 'Sally Field'=>'', 'Mark Dole'=>''})).to be_a_kind_of Hash
      expect(array_2_hash(["bobsmith@example.com","sallyfield@example.com","markdole@example.com"], {'Bob Smith'=>'', 'Sally Field'=>'', 'Mark Dole'=>''})).to eq({'Bob Smith'=>'bobsmith@example.com', 'Sally Field'=>'sallyfield@example.com', 'Mark Dole'=>'markdole@example.com'})
    end
    
    it "works on the empty array [10 points]" , points: 10 do
      expect { array_2_hash([], {'Bob Smith'=>'', 'Sally Field'=>'', 'Mark Dole'=>''}) }.not_to raise_error
      expect(array_2_hash([], {'Bob Smith'=>'', 'Sally Field'=>'', 'Mark Dole'=>''})).to eq({'Bob Smith'=>'', 'Sally Field'=>'', 'Mark Dole'=>''})
    end
  end
end

describe 'Ruby Hashes Part II' do

  describe "array2d_2_hash", :disabled =>true do
    it "should be defined" do
      expect { array2d_2_hash([["bobsmith@example.com", "555-555-5555"],["sallyfield@example.com","111-111-1111"]], {'Bob Smith'=>{}, 'Sally Field'=>{}}) }.not_to raise_error
    end
    
    it "returns the correct hash [30 points]" , points: 30 do
      expect(array2d_2_hash([["bobsmith@example.com", "555-555-5555"],["sallyfield@example.com","111-111-1111"]], {'Bob Smith'=>{}, 'Sally Field'=>{}})).to be_a_kind_of Hash
      expect(array2d_2_hash([["bobsmith@example.com", "555-555-5555"],["sallyfield@example.com","111-111-1111"]], {'Bob Smith'=>{}, 'Sally Field'=>{}})).to eq({"Bob Smith"=>{"email"=>"bobsmith@example.com", "phone"=>"555-555-5555"}, "Sally Field"=>{"email"=>"sallyfield@example.com", "phone"=>"111-111-1111"}})
     end
    
    it "works on the empty array [10 points]" , points: 10 do
      expect { array2d_2_hash([[]], {'Bob Smith'=>{}, 'Sally Field'=>{}}) }.not_to raise_error
      expect(array2d_2_hash([[]], {'Bob Smith'=>{}, 'Sally Field'=>{}})).to eq({"Bob Smith"=>{}, "Sally Field"=>{}})
    end
  end
end