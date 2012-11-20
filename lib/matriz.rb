require 'racional'

class Matriz

	attr_accessor :tam, :matr
	
	def initialize(m)
		@tam = m.size-1
		@matr = m
	end
	
	def to_s
		resultado = ""
		for i in 0..(self.tam) do
			#puts self.matr[i].to_s
			resultado = resultado + self.matr[i].to_s + "\n"
		end
		return resultado
	end
	
	def +(o)
		for i in 0..@tam do
			for j in 0..@tam do
				o.matr[i][j] = @matr[i][j] + o.matr[i][j]
			end
		end
		o.to_s
	end
	
	def *(o) # Suponemos que son matrices cuadradas
        suma = 0;
		result = Matriz.new(Array.new(@tam+1,Array.new(o.tam+1)))
        for i in 0..@tam  
            for j in 0..@tam
                suma = 0;  
                for k in 0..@tam  
                    suma += @matr[i][k] * o.matr[k][j]
                end 
                result.matr[i][j] = suma
            end  
        end
        return result
	end
end

if __FILE__ == $0
	m1 = Matriz.new([[1,2], [3,4]])
	m2 = Matriz.new([[5,6], [7,8]])
	#m1 + m2
	
	#mr1 = Matriz.new([[Racional.new(4,3),Racional.new(4,3)],[Racional.new(4,3),Racional.new(4,3)]])
	#mr2 = Matriz.new([[Racional.new(1,3),Racional.new(1,3)],[Racional.new(1,3),Racional.new(1,3)]])
	#mr1 + mr2
	
	puts m1 * m2
end