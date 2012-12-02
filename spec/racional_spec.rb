require 'racional'

describe Racional do
	before :each do
        @racional = Racional.new(0, 1)
		@racional2 = Racional.new(2, 4)
        @racional3 = Racional.new(4, 3)
	end
	
	it "Debe existir un numerador" do
		@racional.numerador.should == 0
	end
	
	it "Debe existir un denominador" do
		@racional.denominador.should == 1
	end
	
	it "Debe de estar en su forma reducida" do
		@racional2.numerador.should == 1
        @racional2.denominador.should == 2
	end
	
	it "Se debe invocar al metodo num() para obtener el numerador" do
		Racional.new(1, 5).respond_to?("numerador").should == true
	end
	
	it "Se debe invocar al metodo denom() para obtener el denominador" do
		Racional.new(1, 5).respond_to?("denominador").should == true
	end
	
	it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
		@racional.to_s.should == "0/1"
	end
	
	it "Se debe mostar por la consola la fraccion en formato flotante" do
		@racional.to_f.should == 0/1
        @racional2.to_f.should == 2/4
	end
	
	it "Se debe comparar si dos fracciones son iguales con ==" do
		@racional2.should == Racional.new(1,2)
	end
	
	it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
        Racional.new(-3,4).abs.should == Racional.new(3, 4)
	end
	
	it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
        @racional3.reciprocal.should == Racional.new(3, 4)
	end
	
	it "Se debe calcular el opuesto de una fraccion con -" do
        (- @racional3).should == Racional.new(-4, 3)
	end
	
	it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
		(@racional + Racional.new(1,2)).should == Racional.new(1,2)
	end
	
	it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
        (@racional - Racional.new(1,2)).should == Racional.new(-1,2)
	end
	
	it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
        (@racional * Racional.new(1,2)).should == Racional.new(0,2)
	end
	
	it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
        (@racional / Racional.new(1,2)).should == Racional.new(0,1)
	end
	
	it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
        (@racional % Racional.new(1,2)).should == Racional.new(0,2)
	end
	
	it "Se debe de poder comprobar si una fracion es menor que otra" do
        (@racional < Racional.new(1,2)).should == true
	end
	
	it "Se debe de poder comprobar si una fracion es mayor que otra" do
		(@racional > Racional.new(1,2)).should == false
	end
	
	it "Se debe de poder comprobar si una fracion es menor o igual que otra" do
        (@racional <= Racional.new(1,2)).should == true
	end
	
	it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
		(@racional >= Racional.new(1,2)).should == false
	end
end
