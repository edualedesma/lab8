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
		resultado = @matrizR + Matriz.new([[Racional.new(1,3),Racional.new(1,3)],[Racional.new(1,3),Racional.new(1,3)]])
        resultado.should == Matriz.new([[Racional.new(2,3),Racional.new(3,3)],[Racional.new(4,3),Racional.new(5,3)]])
	end
	
	it "Se debe poder multiplicar una matriz de Enteros" do
		resultado = @matriz * Matriz.new([[2,2],[2,2]])
        resultado.should == Matriz.new([[6,6],[14,14]])
	end
    
    it "Se debe poder multiplicar dos matrices de Racionales" do
        resultado = @matrizR * Matriz.new([[Racional.new(5,3),Racional.new(6,3)],[Racional.new(7,3),Racional.new(8,3)]])
        resultado.should == Matriz.new([[Racional.new(19,9),Racional.new(22,9)],[Racional.new(43,9),Racional.new(50,9)]])
    end
	
end