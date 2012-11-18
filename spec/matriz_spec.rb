require 'matriz'

describe Matriz do
	before :each do
		@matriz = Matriz.new([[1,2],[3,4]])
	end
	
	it "Se deben poder sumar dos matrices de enteros" do
		 @matriz + Matriz.new([[2,2],[2,2]])
	end
	
end