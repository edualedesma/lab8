require 'racional'

class Matriz

	attr_accessor :tam, :matr
	
	def initialize(m)
		@tam = m.size-1
		@matr = m
	end
    
    def [] (index)
        @data[index]
    end
    
    def == (o)
        for i in 0..(self.tam) do
            for j in 0..(self.tam) do
                if self.matr[i][j] != o.matr[i][j]
                    return false
                end
            end
        end
        return true
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
		vector = Array.new(@tam+1) { Array.new(@tam+1,0) }
		result = Matriz.new(vector)
		for i in 0..@tam do
			for j in 0..@tam do
				result.matr[i][j] = @matr[i][j] + o.matr[i][j]
			end
		end
		return result
	end
	
	def *(o) # Suponemos que son matrices cuadradas
		vector = Array.new(@tam+1) { Array.new(@tam+1,0) } # Array.new(2) { Array.new(2,0) }
		result = Matriz.new(vector)
        for i in 0..@tam  
            for j in 0..@tam
                suma = self.matr[i][0] * o.matr[0][j];
                for k in 1..@tam
					suma = suma + self.matr[i][k] * o.matr[k][j]
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
	
	mr1 = Matriz.new([[Racional.new(1,3),Racional.new(2,3)],[Racional.new(3,3),Racional.new(4,3)]])
	mr2 = Matriz.new([[Racional.new(5,3),Racional.new(6,3)],[Racional.new(7,3),Racional.new(8,3)]])
	
	puts m1 + m2	# Suma de matrices enteras
	puts mr1 + mr2	# Suma de matrices racionales
	
	puts m1 * m2	# Multiplicación de matrices enteras
	puts mr1 * mr2	# Multiplicación de matrices racionales
end