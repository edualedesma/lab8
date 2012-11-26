require 'matriz'
require 'racional'

describe Matriz do
	before :each do
		@matriz = Matriz.new([[1,2],[3,4]])
		@matrizR = Matriz.new([[Racional.new(1,3),Racional.new(2,3)],[Racional.new(3,3),Racional.new(4,3)]])
	end
	
	it "Se deben poder sumar dos matrices de enteros" do
        resultado = @matriz + Matriz.new([[2,2],[2,2]])
        resultado.should == Matriz.new([[3,4],[5,6]])
	end
	
	it "Se debe poder sumar dos matrices de racionales" do
		@matrizR + Matriz.new([[Racional.new(1,3),Racional.new(1,3)],[Racional.new(1,3),Racional.new(1,3)]])
	end
	
	it "Se debe poder multiplicar una matriz de Enteros" do
		@matriz * Matriz.new([[2,2],[2,2]])
	end
	
end